ZDAT = ZDAT or {}
ZDAT.name = "ZoneDailiesAchievementTracker"
ZDAT.author = "@psi-pisi"

ZDAT.questStatuses = {}

function ZDAT:Initialize()
  ZDAT.Utils.SvInit()

  -- Register Keybinding Menu
  ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_ZDAT", "Toggle Tracker")

  SLASH_COMMANDS["/zdat"] = function(keyWord, argument) ZDAT.UI.Layout.toggleWindow() end

  ZDAT.Screens.Screen.initialize()

  ZDAT.UI.Layout.refresh()

  SCENE_MANAGER:RegisterTopLevel(ZDAT_GUI, locksUIMode)

  --Unregister Loaded Callback
  EVENT_MANAGER:UnregisterForEvent(ZDAT.name, EVENT_ADD_ON_LOADED);
end

function ZDAT.OnAddOnLoaded(addOnName)
  if (addOnName ~= ZDAT.name) then
    ZDAT:Initialize()
  end
end

--Register Loaded Callback
EVENT_MANAGER:RegisterForEvent(ZDAT.name, EVENT_ADD_ON_LOADED, ZDAT.OnAddOnLoaded);

function ZDAT.onQuestAdded(eventCode, journalIndex, questName, objectiveName)
	-- if this is one of the daily quests we track, then update the quest status
  local achievementId = ZDAT.Data.Quests.isDailyQuest(questName)
	if achievementId ~= -1 then
    ZDAT.questStatuses = ZDAT.Utils.getForChar(GetCurrentCharacterId()).questStatuses

    ZDAT.questStatuses[achievementId] = {
      addedTime = ZDAT.Utils.getCurrentTime(),
      isCompleted = false
    }
     d("questName: " .. questName .. " is added.")

	end
  ZDAT.Utils.getForChar(GetCurrentCharacterId()).questStatuses = ZDAT.questStatuses
end

EVENT_MANAGER:RegisterForEvent(ZDAT.name, EVENT_QUEST_ADDED, ZDAT.onQuestAdded)

function ZDAT.onQuestComplete(eventCode, questName, level, previousExperience, currentExperience, championPoints, questType, instanceDisplayType)
  local achievementId = ZDAT.Data.Quests.isDailyQuest(questName)
	if achievementId ~= -1 then
    ZDAT.questStatuses = ZDAT.Utils.getForChar(GetCurrentCharacterId()).questStatuses

    if ZDAT.questStatuses[achievementId] ~= nil then
      ZDAT.questStatuses[achievementId].isCompleted = true
    end
  end
  d("questName: " .. questName .. " set as completed.")

  ZDAT.Utils.getForChar(GetCurrentCharacterId()).questStatuses = ZDAT.questStatuses
end

EVENT_MANAGER:RegisterForEvent(ZDAT.name, EVENT_QUEST_COMPLETE, ZDAT.onQuestComplete)

-- On Journal Search Result ----------------------
ZDAT.ACHIEVEMENTAID = 0
function ZDAT.achievementSearchCallback()
  -- limit to just searches trigged by addon
	if ACHIEVEMENTS.contentSearchEditBox:GetText() == GetAchievementName(ZDAT.ACHIEVEMENTAID) then
		-- navigate to category
		local categoryIndex, subCategoryIndex, achievementIndex = GetCategoryInfoFromAchievementId(ZDAT.ACHIEVEMENTAID)
		ACHIEVEMENTS:OpenCategory(categoryIndex, subCategoryIndex)
		-- expand achievement
		if ACHIEVEMENTS.achievementsById[ZDAT.ACHIEVEMENTAID] then
			ACHIEVEMENTS.achievementsById[ZDAT.ACHIEVEMENTAID]:Expand()
		end
	end
end

EVENT_MANAGER:RegisterForEvent(ZDAT.name, EVENT_ACHIEVEMENTS_SEARCH_RESULTS_READY, ZDAT.achievementSearchCallback) 


