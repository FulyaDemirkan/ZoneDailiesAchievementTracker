-- Initialize File
ZDAT                 = ZDAT or {}
ZDAT.Screens         = ZDAT.Screens or {}
ZDAT.Screens.Screen  = {}

function ZDAT.Screens.Screen.initialize()
    local _v  = function() return true end
    local _is = ZDAT.UI.Constants.iconSize

    -- COLUMN 1
    -- headers
    local t = {{
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=140,  t="ZONE",         tt="ZONE"},
      ZDAT.UI.Misc.spacer{  v=_v, w=10},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=200,  t="ACHIEVEMENT",  tt="ACHIEVEMENT",   align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Misc.spacer{  v=_v, w=10},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="T1",           tt="TIER I",        align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="T2",           tt="TIER II",       align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="T3",           tt="TIER III",      align=TEXT_ALIGN_CENTER},
      }}

  -- create grid rows
    local rows = ZDAT.Data.Achievements.GetStatus()
    for _, row in pairs(rows) do
      if row.column == 1 then
        t[#t+1] =  {
          ZDAT.UI.Labels.teleport{    v=_v,     t=row.zone,         w=140, c=ZDAT.UI.Constants.rgbBlue, wayshrineId=row.wayshrineId},
          ZDAT.UI.Misc.spacer{        v=_v, w=10},
          ZDAT.UI.Labels.achievement{ v=_v,     t=row.tierIII.name, w=200, a=row.tierIII.id, c=ZDAT.UI.Constants.rgbBlue},
          ZDAT.UI.Misc.spacer{        v=_v, w=10},
          ZDAT.UI.Icons.achievement{  v=_v,     a=row.tierI.id},
          ZDAT.UI.Icons.achievement{  v=_v,     a=row.tierII.id},
          ZDAT.UI.Icons.achievement{  v=_v,     a=row.tierIII.id},
        }
      end
    end
    -- anchor grid
    ZDAT.UI.Layout.anchorGrid(t, ZDAT.UI.Layout.anchor(40, 60))

    -- COLUMN 2
    -- headers
    local t = {{
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=140,  t="ZONE",         tt="ZONE"},
      ZDAT.UI.Misc.spacer{  v=_v, w=10},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=200,  t="ACHIEVEMENT",  tt="ACHIEVEMENT"},
      ZDAT.UI.Misc.spacer{  v=_v, w=10},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="T1",           tt="TIER I",        align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="T2",           tt="TIER II",       align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="T3",           tt="TIER III",      align=TEXT_ALIGN_CENTER},
      }}

  -- create grid rows
    local rows = ZDAT.Data.Achievements.GetStatus()
    for _, row in pairs(rows) do
      if row.column == 2 then
        t[#t+1] =  {
          ZDAT.UI.Labels.teleport{    v=_v,     t=row.zone,         w=140, c=ZDAT.UI.Constants.rgbBlue, wayshrineId=row.wayshrineId},
          ZDAT.UI.Misc.spacer{        v=_v, w=10},
          ZDAT.UI.Labels.achievement{ v=_v,     t=row.tierIII.name, w=200, a=row.tierIII.id, c=ZDAT.UI.Constants.rgbBlue},
          ZDAT.UI.Misc.spacer{        v=_v, w=10},
          ZDAT.UI.Icons.achievement{  v=_v,     a=row.tierI.id},
          ZDAT.UI.Icons.achievement{  v=_v,     a=row.tierII.id},
          ZDAT.UI.Icons.achievement{  v=_v,     a=row.tierIII.id},
        }
      end
    end
    -- anchor grid
    ZDAT.UI.Layout.anchorGrid(t, ZDAT.UI.Layout.anchor(550, 60))
end