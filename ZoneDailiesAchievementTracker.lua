ZDAT = ZDAT or {}
ZDAT.name = "ZoneDailiesAchievementTracker"

function ZDAT:Initialize()
  -- Register saved variables
  ZDAT.SV = ZO_SavedVars:NewAccountWide("ZDATSavedVariables", 1, nil, {})
  
    -- Register Keybinding Menu
  --ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_ZDAT", "Toggle Achievement Tracker")

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


