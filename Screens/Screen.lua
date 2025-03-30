-- Initialize File
ZDAT                 = ZDAT or {}
ZDAT.Screens         = ZDAT.Screens or {}
ZDAT.Screens.Screen  = {}

function ZDAT.Screens.Screen.initialize()
    local _v  = function() return true end
    local _is = ZDAT.UI.Constants.iconSize
    --m
    local t = {{
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=155,  t="ZONE", tt="ZONE"},
      ZDAT.UI.Misc.spacer{  v=_v, w=20},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=155,  t="TIER I",  tt="TIER I",    align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Misc.spacer{  v=_v, w=20},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="STATUS",  tt="STATUS",    align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Misc.spacer{  v=_v, w=20},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=155,  t="TIER II",  tt="TIER II",   align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Misc.spacer{  v=_v, w=20},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="STATUS",  tt="STATUS",    align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Misc.spacer{  v=_v, w=20},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=155,  t="TIER III",  tt="TIER III",  align=TEXT_ALIGN_CENTER},
      ZDAT.UI.Misc.spacer{  v=_v, w=20},
      ZDAT.UI.Labels.basic{ v=_v,      f="ZoFontGameSmall", w=_is,  t="STATUS",  tt="STATUS",    align=TEXT_ALIGN_CENTER},
      }}

  -- create grid rows
    local rows = ZDAT.Data.Achievements.GetStatus()
    local blue = ZDAT.UI.Constants.rgbBlue
    for _, row in pairs(rows) do
      t[#t+1] =  {
        ZDAT.UI.Labels.teleport{v=_v, t=row.zone, w=155, c=ZDAT.UI.Constants.rgbBlue, wayshrineId=row.wayshrineId},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
        ZDAT.UI.Labels.achievement{v=_v, t=row.tierI.name, w=155, c=ZDAT.UI.Constants.rgbBlue},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
        ZDAT.UI.Icons.achievement{v=_v, a=row.tierI.id},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
        ZDAT.UI.Labels.achievement{v=_v, t=row.tierII.name, w=155, c=ZDAT.UI.Constants.rgbBlue},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
        ZDAT.UI.Icons.achievement{v=_v, a=row.tierII.id},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
        ZDAT.UI.Labels.achievement{v=_v, t=row.tierIII.name, w=155, c=ZDAT.UI.Constants.rgbBlue},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
        ZDAT.UI.Icons.achievement{v=_v, a=row.tierIII.id},
        ZDAT.UI.Misc.spacer{  v=_v, w=20},
      }
    end

    -- anchor grid
    ZDAT.UI.Layout.anchorGrid(t, ZDAT.UI.Layout.anchor(40, 60))
end