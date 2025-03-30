-- Initialize File
ZDAT           = ZDAT or {}
ZDAT.UI        = ZDAT.UI or {}
ZDAT.UI.Layout = {}

------------------------------------------------------------------------------------------------------------------
-- Anchor Functions
------------------------------------------------------------------------------------------------------------------

-- anchor (a 1px label used to pin other controls to)
function ZDAT.UI.Layout.anchor(x, y, align, relativeObject)
	local control = WINDOW_MANAGER:CreateControl("$(parent)"..ZDAT.Utils.uid(), ZDAT_GUI, CT_LABEL)
	control:SetDimensions(1,1)
	control:SetAnchor(TOPLEFT, relativeObject or ZDAT_GUI, align or TOPLEFT, x, y)
	return control
end

function ZDAT.UI.Layout.anchorRow(row, anchor)
  for i, cell in ipairs(row) do
    if i==1 then
      cell:SetAnchor(TOPLEFT, anchor, BOTTOMLEFT, 0, 3)
    else
      cell:SetAnchor(LEFT, row[i-1], RIGHT, 3, 0)
    end
  end
end

function ZDAT.UI.Layout.anchorGrid(grid, anchor) 
  for i, row in ipairs(grid) do
    ZDAT.UI.Layout.anchorRow(row, (i==1) and anchor or grid[i-1][1])
  end
end

-- reverse row layout for building from right side
function ZDAT.UI.Layout.anchorRowReverse(row, anchor)
  for i=#row, 1, -1 do
    local cell = row[i]
    if i==#row then
      cell:SetAnchor(BOTTOMRIGHT, anchor, BOTTOMRIGHT, 0, 3)
    else
      cell:SetAnchor(RIGHT, row[i+1], LEFT, 3, 0)
    end
  end
end

------------------------------------------------------------------------------------------------------------------
-- Refresh
------------------------------------------------------------------------------------------------------------------
-- register refresh functions
ZDAT.UI.Layout.refreshFns = {}
function ZDAT.UI.Layout.registerRefreshFn(fn)
  table.insert(ZDAT.UI.Layout.refreshFns, fn)
end

function ZDAT.UI.Layout.updateScreenSize()
  local w, h
  w = 960
  h = 1280
  ZDAT_GUI:SetDrawTier(DT_LOW)
  ZDAT_GUI:SetDimensions(w, h)
end

function ZDAT.UI.Layout.refresh()
  ZDAT.UI.Layout.updateScreenSize()
  -- run all refresh functions
  for _, fn in ipairs(ZDAT.UI.Layout.refreshFns) do fn() end
end

-- -- open and close window
function ZDAT.UI.Layout.toggleWindow()
  ZDAT.UI.Layout.refresh()
  SCENE_MANAGER:ToggleTopLevel(ZDAT_GUI)    
end
