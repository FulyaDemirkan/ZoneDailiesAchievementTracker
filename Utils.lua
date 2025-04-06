-- Initialize file
ZDAT       = ZDAT or {}
ZDAT.Utils = {}

-- return unique id
function ZDAT.Utils.uid()
    ZDAT.Utils.uidCurrent = (ZDAT.Utils.uidCurrent or 10000) + 1
    return ZDAT.Utils.uidCurrent
end

function ZDAT.Utils.getCharacters()
	if not ZDAT.characters then
		local characters = {}

		for i = 1, GetNumCharacters() do
			local characterRawName, _, _, _, _, _, characterId = GetCharacterInfo(i)

			characters[#characters + 1] = {
				id = characterId,
				name = zo_strformat("<<1>>", characterRawName),
				rawName = characterRawName
			}
		end

		-- sort table alphabetically
		table.sort(characters, function(a, b) return a.name < b.name end)

		ZDAT.characters = characters
	end

	return ZDAT.characters
end

-- Time
function ZDAT.Utils.getCurrentTime()
	return os.time(os.date("!*t"))
end

function ZDAT.Utils.getResetTime()
	local resetHour = GetWorldName() == "NA Megaserver" and 10 or 3
	local currentDate = os.date("!*t")
	local resetTime = os.time({
		year = currentDate.year,
		month = currentDate.month,
		day = currentDate.day,
		hour = resetHour,
		minute = 0,
		second = 0,
		isdst = currentDate.isdst
	})
	local currentTime = os.time(currentDate)

	-- if reset time has already happened today, increment to tomorrow's reset time
	if resetTime < currentTime then
		resetTime = resetTime + 86400
	end

	return resetTime
end

-- Quest Check
function ZDAT.Utils.isDailyQuestComplete(characterId, achievementId)
    local questStatus = ZDAT.Utils.getForChar(characterId).questStatuses[achievementId]

    local resetTime = ZDAT.Utils.getResetTime()
	local previousResetTime = resetTime - 86400

    if questStatus then
        -- only count quest if it is completed and it wasn't picked up yesterday
        if questStatus.progressDateTime > previousResetTime and questStatus.progressDateTime < resetTime then
            return true
        end
    end
	return false
end

-- SavedVariables
function ZDAT.Utils.SvInit()
    ZDAT.SavedVariables = ZO_SavedVars:NewAccountWide("ZoneDailiesAchievementTracker_SavedVarsAccount", nil, GetWorldName());
	ZDAT.savedVarsPerChar = {}

	for _, character in ipairs(ZDAT.Utils.getCharacters()) do
		ZDAT.savedVarsPerChar[character.id] = ZO_SavedVars:New("ZoneDailiesAchievementTracker_SavedVarsChar",
			1, GetWorldName(), ZDAT.Utils.getCharDefaults(), nil, nil, character.name, character.id, ZO_SAVED_VARS_CHARACTER_ID_KEY)
	end
end

function ZDAT.Utils.getPerChar()
	return ZDAT.savedVarsPerChar
end

function ZDAT.Utils.getForChar(characterId)
	return ZDAT.savedVarsPerChar[characterId]
end

function ZDAT.Utils.getCharDefaults()
	return {
		questStatuses = {}
	}
end

