ZDAT                    = ZDAT or {}
ZDAT.Data               = ZDAT.Data or {}
ZDAT.Data.Achievements  = {}

local DB1 = {
  { ZONE="West Weald", CATEGORY_NAME="Gold Road", CATEGORY_ID=12, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=6, ACHIEVEMENT_ID=2 },
  { ZONE="West Weald", CATEGORY_NAME="Gold Road", CATEGORY_ID=12, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=6, ACHIEVEMENT_ID=3 },
  { ZONE="West Weald", CATEGORY_NAME="Gold Road", CATEGORY_ID=12, SUBCATEGORY_NAME="Mirrormoor Mosaics", SUBCATEGORY_ID=7, ACHIEVEMENT_ID=1 },

  { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom", CATEGORY_ID=13, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=5, ACHIEVEMENT_ID=1 },
  { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom", CATEGORY_ID=13, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=5, ACHIEVEMENT_ID=7 },
  { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom", CATEGORY_ID=13, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=5, ACHIEVEMENT_ID=10 },

  { ZONE="High Isle", CATEGORY_NAME="High Isle", CATEGORY_ID=14, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=5, ACHIEVEMENT_ID=1 },
  { ZONE="High Isle", CATEGORY_NAME="High Isle", CATEGORY_ID=14, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=5, ACHIEVEMENT_ID=2 },
  { ZONE="High Isle", CATEGORY_NAME="High Isle", CATEGORY_ID=14, SUBCATEGORY_NAME="Volcanic Vents", SUBCATEGORY_ID=6, ACHIEVEMENT_ID=1 },

  { ZONE="Blackwood", CATEGORY_NAME="Blackwood", CATEGORY_ID=15, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=4, ACHIEVEMENT_ID=1 },
  { ZONE="Blackwood", CATEGORY_NAME="Blackwood", CATEGORY_ID=15, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=4, ACHIEVEMENT_ID=3 },

  { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor", CATEGORY_ID=16, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=3, ACHIEVEMENT_ID=1 },
  { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor", CATEGORY_ID=16, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=3, ACHIEVEMENT_ID=2 },
  { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor", CATEGORY_ID=16, SUBCATEGORY_NAME="Harrowstorms", SUBCATEGORY_ID=4, ACHIEVEMENT_ID=2 },

  { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr", CATEGORY_ID=17, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr", CATEGORY_ID=17, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },
  { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr", CATEGORY_ID=17, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=3 },

  { ZONE="Summerset", CATEGORY_NAME="Summerset", CATEGORY_ID=18, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Summerset", CATEGORY_NAME="Summerset", CATEGORY_ID=18, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },
  { ZONE="Summerset", CATEGORY_NAME="Summerset", CATEGORY_ID=18, SUBCATEGORY_NAME="Abyssal Geysers", SUBCATEGORY_ID=3, ACHIEVEMENT_ID=1 },

  { ZONE="Vvardenfell", CATEGORY_NAME="Morrowind", CATEGORY_ID=19, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=3 },

  { ZONE="Galen", CATEGORY_NAME="Firesong", CATEGORY_ID=23, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Galen", CATEGORY_NAME="Firesong", CATEGORY_ID=23, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },
  { ZONE="Galen", CATEGORY_NAME="Firesong", CATEGORY_ID=23, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=3 },

  { ZONE="Fargrave", CATEGORY_NAME="Deadlands", CATEGORY_ID=26, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Fargrave", CATEGORY_NAME="Deadlands", CATEGORY_ID=26, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },

  { ZONE="The Reach", CATEGORY_NAME="Markarth", CATEGORY_ID=29, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="The Reach", CATEGORY_NAME="Markarth", CATEGORY_ID=29, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },
  { ZONE="The Reach", CATEGORY_NAME="Markarth", CATEGORY_ID=29, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=3 },
  { ZONE="The Reach", CATEGORY_NAME="Markarth", CATEGORY_ID=29, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=4 },

  { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold", CATEGORY_ID=32, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold", CATEGORY_ID=32, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },
  { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold", CATEGORY_ID=32, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=9 },

  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", CATEGORY_ID=35, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", CATEGORY_ID=35, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=11 },
  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", CATEGORY_ID=35, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=12 },
  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", CATEGORY_ID=35, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=14 },

  { ZONE="Clockwork City", CATEGORY_NAME="Clockwork City", CATEGORY_ID=38, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=4 },
  { ZONE="Clockwork City", CATEGORY_NAME="Clockwork City", CATEGORY_ID=38, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=6 },

  { ZONE="Hew's Bane", CATEGORY_NAME="Thieves Guild", CATEGORY_ID=42, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Hew's Bane", CATEGORY_NAME="Thieves Guild", CATEGORY_ID=42, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=2 },
  
  { ZONE="Wrothgar", CATEGORY_NAME="Orsinium", CATEGORY_ID=43, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=1 },
  { ZONE="Wrothgar", CATEGORY_NAME="Orsinium", CATEGORY_ID=43, SUBCATEGORY_NAME="Quests", SUBCATEGORY_ID=2, ACHIEVEMENT_ID=8 },
}

local DB2 = {
  { ZONE="West Weald", CATEGORY_NAME="Gold Road", ACHIEVEMENT_NAME="Gold Road Professional", ACHIEVEMENT_ID= { 3979, 3980, 3981 } },
  { ZONE="West Weald", CATEGORY_NAME="Gold Road", ACHIEVEMENT_NAME="Gold Road Monster Exterminator", ACHIEVEMENT_ID= { 3982, 3983, 3984 } },
  { ZONE="West Weald", CATEGORY_NAME="Gold Road", ACHIEVEMENT_NAME="Mirromoor Incursion Devastator",ACHIEVEMENT_ID= { 4057, 4058, 4059 } },

  { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom", ACHIEVEMENT_NAME="Necrom Monster Exterminator", ACHIEVEMENT_ID= { 3650, 3651, 3652 } },
  { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom", ACHIEVEMENT_NAME="Nymic Champion", ACHIEVEMENT_ID= { 3653, 3654, 3655 } },
  { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom", ACHIEVEMENT_NAME="Necrom Professional", ACHIEVEMENT_ID= { 3647, 3648, 3649 } },

  { ZONE="High Isle", CATEGORY_NAME="High Isle", ACHIEVEMENT_NAME="High Isle Professional", ACHIEVEMENT_ID= { 3308, 3309, 3310 } },
  { ZONE="High Isle", CATEGORY_NAME="High Isle", ACHIEVEMENT_NAME="High Isle Monster Exterminator", ACHIEVEMENT_ID= { 3311, 3312, 3313 } },
  { ZONE="High Isle", CATEGORY_NAME="High Isle", ACHIEVEMENT_NAME="Volcanic Vent Devastator", ACHIEVEMENT_ID= { 3314, 3315, 3316 } },

  { ZONE="Blackwood", CATEGORY_NAME="Blackwood", ACHIEVEMENT_NAME="Blackwood Monster Exterminator", ACHIEVEMENT_ID= { 3060, 3061, 3062 } },
  { ZONE="Blackwood", CATEGORY_NAME="Blackwood", ACHIEVEMENT_NAME="Leyawiin Professional", ACHIEVEMENT_ID= { 3057, 3058, 3059 } },

  { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor", ACHIEVEMENT_NAME="Sword of Solitude Monster Bane", ACHIEVEMENT_ID= { 2729, 2730, 2731} },
  { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor", ACHIEVEMENT_NAME="Organized Scholars' Professsional", ACHIEVEMENT_ID= { 2726, 2727, 2728} },
  { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor", ACHIEVEMENT_NAME="Master Harrowstorm Harrier", ACHIEVEMENT_ID= { 2768, 2769, 2770 } },

  { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr", ACHIEVEMENT_NAME="Bandari Agent", ACHIEVEMENT_ID= { 2490, 2491, 2492 } },
  { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr", ACHIEVEMENT_NAME="Anequina Monster Exterminator", ACHIEVEMENT_ID= { 2493, 2494, 2495 } },
  { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr", ACHIEVEMENT_NAME="Dragon Exterminator", ACHIEVEMENT_ID= { 2496, 2497, 2498 } },

  { ZONE="Summerset", CATEGORY_NAME="Summerset", ACHIEVEMENT_NAME="Divine Magistrate", ACHIEVEMENT_ID= { 2195, 2196, 2197 } },
  { ZONE="Summerset", CATEGORY_NAME="Summerset", ACHIEVEMENT_NAME="Divine Executioner", ACHIEVEMENT_ID= { 2198, 2199, 2200 } },
  { ZONE="Summerset", CATEGORY_NAME="Summerset", ACHIEVEMENT_NAME="Abyssal Devastator", ACHIEVEMENT_ID= { 2178, 2179, 2180 } },

  { ZONE="Vvardenfell", CATEGORY_NAME="Morrowind", ACHIEVEMENT_NAME="Clanfriend", ACHIEVEMENT_ID= { 1877, 1878, 1879 } },

  { ZONE="Galen", CATEGORY_NAME="Firesong", ACHIEVEMENT_NAME="Firestopper", ACHIEVEMENT_ID= { 3522, 3523, 3524 } },
  { ZONE="Galen", CATEGORY_NAME="Firesong", ACHIEVEMENT_NAME="Galen Monster Exterminator", ACHIEVEMENT_ID= { 3519, 3520, 3521 } },
  { ZONE="Galen", CATEGORY_NAME="Firesong", ACHIEVEMENT_NAME="Savage Systres Tour Master", ACHIEVEMENT_ID= { 3516, 3517, 3518 } },

  { ZONE="Fargrave", CATEGORY_NAME="Deadlands", ACHIEVEMENT_NAME="Deadlands Monster Exterminator", ACHIEVEMENT_ID= { 3201, 3202, 3203 } },
  { ZONE="Fargrave", CATEGORY_NAME="Deadlands", ACHIEVEMENT_NAME="Fargrave Professional", ACHIEVEMENT_ID= { 3198, 3199, 3200 } },

  { ZONE="The Reach", CATEGORY_NAME="Markarth", ACHIEVEMENT_NAME="Wayward Guardian Ally", ACHIEVEMENT_ID= { 2957, 2956, 2955 } },
  { ZONE="The Reach", CATEGORY_NAME="Markarth", ACHIEVEMENT_NAME="Master Reach Harrowwstorm Harrier", ACHIEVEMENT_ID= { 2951, 2952, 2953 } },
  { ZONE="The Reach", CATEGORY_NAME="Markarth", ACHIEVEMENT_NAME="The Reach Monster's Bane", ACHIEVEMENT_ID= { 2948, 2949, 2950 } },
  { ZONE="The Reach", CATEGORY_NAME="Markarth", ACHIEVEMENT_NAME="Diplomatic Specialist", ACHIEVEMENT_ID= { 2945, 2946, 2947 } },

  { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold", ACHIEVEMENT_NAME="Dragonguard Operative", ACHIEVEMENT_ID= { 2610, 2611, 2612 } },
  { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold", ACHIEVEMENT_NAME="Senchal's Savior", ACHIEVEMENT_ID= { 2613, 2614, 2615 } },
  { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold", ACHIEVEMENT_NAME="Fearsome Freelancer", ACHIEVEMENT_ID= { 2606, 2607, 2608 } },

  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", ACHIEVEMENT_NAME="Resplendent Rootmender", ACHIEVEMENT_ID= { 2350, 2351, 2352 } },
  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", ACHIEVEMENT_NAME="Hauling Heirlooms", ACHIEVEMENT_ID= { 2344, 2345, 2346 } },
  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", ACHIEVEMENT_NAME="Heart of a Naga", ACHIEVEMENT_ID= { 2347, 2348, 2349 } },
  { ZONE="Murkmire", CATEGORY_NAME="Murkmire", ACHIEVEMENT_NAME="Friend of Murkmire", ACHIEVEMENT_ID= { 2353, 2354, 2355 } },

  { ZONE="Clockwork City", CATEGORY_NAME="Clockwork City", ACHIEVEMENT_NAME="Brass Fortress Quarter Master", ACHIEVEMENT_ID= { 2070, 2071, 2072 } },
  { ZONE="Clockwork City", CATEGORY_NAME="Clockwork City", ACHIEVEMENT_NAME="Honorary Blackfeather", ACHIEVEMENT_ID= { 2065, 2066, 2067 } },

  { ZONE="Hew's Bane", CATEGORY_NAME="Thieves Guild", ACHIEVEMENT_NAME="Professional Pilferer", ACHIEVEMENT_ID= { 1372, 1373, 1374 } },
  { ZONE="Hew's Bane", CATEGORY_NAME="Thieves Guild", ACHIEVEMENT_NAME="Sophisticated Shadowfoot", ACHIEVEMENT_ID= { 1398, 1399, 1400 } },
  
  { ZONE="Wrothgar", CATEGORY_NAME="Orsinium", ACHIEVEMENT_NAME="Monster Hunter of the Month", ACHIEVEMENT_ID= { 1333, 1334, 1335 } },
  { ZONE="Wrothgar", CATEGORY_NAME="Orsinium", ACHIEVEMENT_NAME="Wrothgar Delve Monthly", ACHIEVEMENT_ID= { 1336, 1337, 1338 } },
}

ZDAT.Data.Achievements.DB = {
    { ZONE="West Weald", CATEGORY_NAME="Gold Road",          ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Gold Road Professional",         WAYSHRINE_ID=558, ACHIEVEMENT_IDS={ 3979, 3980, 3981 } }, { ACHIEVEMENT_NAME="Gold Road Monster Exterminator",    WAYSHRINE_ID=558, ACHIEVEMENT_IDS={ 3982, 3983, 3984 } }, { ACHIEVEMENT_NAME="Mirromoor Incursion Devastator",  WAYSHRINE_ID=558, ACHIEVEMENT_IDS={ 4057, 4058, 4059 } } } },
  
    { ZONE="Telvanni Peninsula", CATEGORY_NAME="Necrom",     ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Necrom Monster Exterminator",    WAYSHRINE_ID=536, ACHIEVEMENT_IDS={ 3650, 3651, 3652 } }, { ACHIEVEMENT_NAME="Nymic Champion",                    WAYSHRINE_ID=536, ACHIEVEMENT_IDS={ 3653, 3654, 3655 } }, { ACHIEVEMENT_NAME="Necrom Professional",             WAYSHRINE_ID=536, ACHIEVEMENT_IDS={ 3647, 3648, 3649 } } } },
  
    { ZONE="High Isle", CATEGORY_NAME="High Isle",           ACHIEVEMENTS={ { ACHIEVEMENT_NAME="High Isle Professional",         WAYSHRINE_ID=513, ACHIEVEMENT_IDS={ 3308, 3309, 3310 } }, { ACHIEVEMENT_NAME="High Isle Monster Exterminator",    WAYSHRINE_ID=513, ACHIEVEMENT_IDS={ 3311, 3312, 3313 } }, { ACHIEVEMENT_NAME="Volcanic Vent Devastator",        WAYSHRINE_ID=513, ACHIEVEMENT_IDS={ 3314, 3315, 3316 } } } },
  
    { ZONE="Blackwood", CATEGORY_NAME="Blackwood",           ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Blackwood Monster Exterminator", WAYSHRINE_ID=458, ACHIEVEMENT_IDS={ 3060, 3061, 3062 } }, { ACHIEVEMENT_NAME="Leyawiin Professional",             WAYSHRINE_ID=458, ACHIEVEMENT_IDS={ 3057, 3058, 3059 } } } },
  
    { ZONE="Western Skyrim", CATEGORY_NAME="Greymoor",       ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Sword of Solitude Monster Bane", WAYSHRINE_ID=421, ACHIEVEMENT_IDS={ 2729, 2730, 2731 } }, { ACHIEVEMENT_NAME="Organized Scholars' Professsional", WAYSHRINE_ID=421, ACHIEVEMENT_IDS={ 2726, 2727, 2728 } }, { ACHIEVEMENT_NAME="Master Harrowstorm Harrier",      WAYSHRINE_ID=421, ACHIEVEMENT_IDS={ 2768, 2769, 2770 } } } },
  
    { ZONE="Northern Elsweyr", CATEGORY_NAME="Elsweyr",      ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Bandari Agent",                  WAYSHRINE_ID=382, ACHIEVEMENT_IDS={ 2490, 2491, 2492 } }, { ACHIEVEMENT_NAME="Anequina Monster Exterminator",     WAYSHRINE_ID=382, ACHIEVEMENT_IDS={ 2493, 2494, 2495 } }, { ACHIEVEMENT_NAME="Dragon Exterminator",             WAYSHRINE_ID=382, ACHIEVEMENT_IDS={ 2496, 2497, 2498 } } } },
  
    { ZONE="Summerset", CATEGORY_NAME="Summerset",           ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Divine Magistrate",              WAYSHRINE_ID=355, ACHIEVEMENT_IDS={ 2195, 2196, 2197 } }, { ACHIEVEMENT_NAME="Divine Executioner",                WAYSHRINE_ID=355, ACHIEVEMENT_IDS={ 2198, 2199, 2200 } }, { ACHIEVEMENT_NAME="Abyssal Devastator",              WAYSHRINE_ID=355, ACHIEVEMENT_IDS={ 2178, 2179, 2180 } } } },
  
    { ZONE="Vvardenfell", CATEGORY_NAME="Morrowind",         ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Clanfriend",                     WAYSHRINE_ID=274, ACHIEVEMENT_IDS={ 1877, 1878, 1879 } } } },
  
    { ZONE="Galen", CATEGORY_NAME="Firesong",                ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Firestopper",                    WAYSHRINE_ID=529, ACHIEVEMENT_IDS={ 3522, 3523, 3524 } }, { ACHIEVEMENT_NAME="Galen Monster Exterminator",        WAYSHRINE_ID=529, ACHIEVEMENT_IDS={ 3519, 3520, 3521 } }, { ACHIEVEMENT_NAME="Savage Systres Tour Master",      WAYSHRINE_ID=529, ACHIEVEMENT_IDS={ 3516, 3517, 3518 } } } },
  
    { ZONE="Fargrave", CATEGORY_NAME="Deadlands",            ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Deadlands Monster Exterminator", WAYSHRINE_ID=493, ACHIEVEMENT_IDS={ 3201, 3202, 3203 } }, { ACHIEVEMENT_NAME="Fargrave Professional",             WAYSHRINE_ID=493, ACHIEVEMENT_IDS={ 3198, 3199, 3200 } } } },
  
    { ZONE="The Reach", CATEGORY_NAME="Markarth",            ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Wayward Guardian Ally",          WAYSHRINE_ID=449, ACHIEVEMENT_IDS={ 2957, 2956, 2955 } }, { ACHIEVEMENT_NAME="Master Reach Harrowwstorm Harrier", WAYSHRINE_ID=449, ACHIEVEMENT_IDS={ 2951, 2952, 2953 } }, { ACHIEVEMENT_NAME="The Reach Monster's Bane",        WAYSHRINE_ID=449, ACHIEVEMENT_IDS={ 2948, 2949, 2950 } }, { ACHIEVEMENT_NAME="Diplomatic Specialist", WAYSHRINE_ID=449, ACHIEVEMENT_IDS={ 2945, 2946, 2947 } } } },
  
    { ZONE="Southern Elsweyr", CATEGORY_NAME="Dragonhold",   ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Dragonguard Operative",          WAYSHRINE_ID=407, ACHIEVEMENT_IDS={ 2610, 2611, 2612 } }, { ACHIEVEMENT_NAME="Senchal's Savior",                  WAYSHRINE_ID=402, ACHIEVEMENT_IDS={ 2613, 2614, 2615 } }, { ACHIEVEMENT_NAME="Fearsome Freelancer",             WAYSHRINE_ID=402, ACHIEVEMENT_IDS={ 2606, 2607, 2608 } } } },
  
    { ZONE="Murkmire", CATEGORY_NAME="Murkmire",             ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Resplendent Rootmender",         WAYSHRINE_ID=377, ACHIEVEMENT_IDS={ 2350, 2351, 2352 } }, { ACHIEVEMENT_NAME="Hauling Heirlooms",                 WAYSHRINE_ID=374, ACHIEVEMENT_IDS={ 2344, 2345, 2346 } }, { ACHIEVEMENT_NAME="Heart of a Naga",                 WAYSHRINE_ID=374, ACHIEVEMENT_IDS={ 2347, 2348, 2349 } }, { ACHIEVEMENT_NAME="Friend of Murkmire",    WAYSHRINE_ID=374, ACHIEVEMENT_IDS={ 2353, 2354, 2355 } } } },
  
    { ZONE="Clockwork City", CATEGORY_NAME="Clockwork City", ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Brass Fortress Quarter Master",  WAYSHRINE_ID=337, ACHIEVEMENT_IDS={ 2070, 2071, 2072 } }, { ACHIEVEMENT_NAME="Honorary Blackfeather",             WAYSHRINE_ID=337, ACHIEVEMENT_IDS={ 2065, 2066, 2067 } } } },
  
    { ZONE="Hew's Bane", CATEGORY_NAME="Thieves Guild",      ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Professional Pilferer",          WAYSHRINE_ID=255, ACHIEVEMENT_IDS={ 1372, 1373, 1374 } }, { ACHIEVEMENT_NAME="Sophisticated Shadowfoot",          WAYSHRINE_ID=255, ACHIEVEMENT_IDS={ 1398, 1399, 1400 } } } },
    
    { ZONE="Wrothgar", CATEGORY_NAME="Orsinium",             ACHIEVEMENTS={ { ACHIEVEMENT_NAME="Monster Hunter of the Month",    WAYSHRINE_ID=244, ACHIEVEMENT_IDS={ 1333, 1334, 1335 } }, { ACHIEVEMENT_NAME="Wrothgar Delve Monthly",            WAYSHRINE_ID=244, ACHIEVEMENT_IDS={ 1336, 1337, 1338 } } } }
}

ZDAT.Data.Achievements.GetStatus = function()
  local status = {}

  for i, v in ipairs(ZDAT.Data.Achievements.DB) do
    for j, y in ipairs(v.ACHIEVEMENTS) do
      local row = {zone = "", categoryName = "", tierI = {id = "", name = "", description = "", icon = "", completed = ""}, tierII = {id = "", name = "", description = "", icon = "", completed = ""}, tierIII = {id = "", name = "", description = "", icon = "", completed = ""} }
      for k, z in ipairs(y.ACHIEVEMENT_IDS) do
        local name, description, points, icon, completed = GetAchievementInfo(z)
        row.zone = v.ZONE
        row.categoryName = v.CATEGORY_NAME
        row.wayshrineId = y.WAYSHRINE_ID
        if k == 1 then
          row.tierI.id = z
          row.tierI.name = name
          row.tierI.description = description
          row.tierI.icon = icon
          row.tierI.completed = completed
        elseif k == 2 then
          row.tierII.id = z
          row.tierII.name = name
          row.tierII.description = description
          row.tierII.icon = icon
          row.tierII.completed = completed
        elseif k == 3 then
          row.tierIII.id = z
          row.tierIII.name = name
          row.tierIII.description = description
          row.tierIII.icon = icon
          row.tierIII.completed = completed
        end
      end
      table.insert(status, row)
    end
  end
  return status
end