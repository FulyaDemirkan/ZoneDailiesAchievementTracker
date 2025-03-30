-- Initialize file
ZDAT         = ZDAT or {}
ZDAT.UI      = ZDAT.UI or {}
ZDAT.UI.Misc = {}

-- spacer (hidden empty label)
function ZDAT.UI.Misc.spacer(data)
	data.w = data.w or ZDAT.UI.Constants.spacer
	local control = WINDOW_MANAGER:CreateControl("$(parent)"..ZDAT.Utils.uid(), ZDAT_GUI, CT_LABEL)
	control:SetDimensions(data.w, ZDAT.UI.Constants.cellHeight)
	control:SetHidden(true)
	return control
end

-- checkBox
function ZDAT.UI.Misc.checkBox(data)
	assert(data.stateVar, 'stateVar required')
	local tOn  = ZDAT.UI.Constants.texture.CHECKON
	local tOff = ZDAT.UI.Constants.texture.CHECKOFF
	data.iconSize = data.iconSize or ZDAT.UI.Constants.iconSize

	local control = WINDOW_MANAGER:CreateControl("$(parent)_Button" .. ZDAT.Utils.uid(), ZDAT_GUI, CT_BUTTON)
	control:SetDimensions(data.iconSize, data.iconSize)
	control:SetState(BSTATE_NORMAL)  
	control:SetMouseOverBlendMode(0)    
	control:SetHidden(false)
	control:SetEnabled(true) 
	control:SetNormalTexture(ZDAT.SV.state[data.stateVar] and tOn or tOff) 
	control:SetMouseOverTexture("esoui/art/buttons/generic_highlight.dds") 
	control:SetHandler("OnClicked", function()
		ZDAT.SV.state[data.stateVar] = not ZDAT.SV.state[data.stateVar] -- flip state
		control:SetNormalTexture(ZDAT.SV.state[data.stateVar] and tOn or tOff) -- update texture
		ZDAT.UI.Layout.refresh() -- refresh on new state
		end)

	if data.v then
		ZDAT.UI.Layout.registerRefreshFn(function()
			control:SetHidden(not data.v())
			end)
	end

	return control
end

-- basic Button
function ZDAT.UI.Misc.button(data)
	assert(data.texture)
	assert(data.clickFn)
	data.is = data.is or ZDAT.UI.Constants.iconSize

	local control = WINDOW_MANAGER:CreateControl("$(parent)_Button" .. ZDAT.Utils.uid(), ZDAT_GUI, CT_BUTTON)
	control:SetDimensions(data.is,data.is) 
	control:SetState(BSTATE_NORMAL)  
	control:SetMouseOverBlendMode(0)    
	control:SetHidden(false)
	control:SetEnabled(true) 
	control:SetNormalTexture(data.texture) 
	control:SetMouseOverTexture("esoui/art/buttons/generic_highlight.dds") 
	control:SetHandler("OnClicked", data.clickFn)
	
	if data.v then
		ZDAT.UI.Layout.registerRefreshFn(function()
			control:SetHidden(not data.v())
			end)
	end
	
	return control
end
  
-- menuButton
function ZDAT.UI.Misc.menuButton(data)
	assert(data.options)
	assert(data.stateVar)
	data.texture = data.texture or "esoui/art/buttons/dropbox_arrow_normal.dds"

	data.clickFn = function(control, button)
		-- d(data.options) -- for debugging
		if button == 2 then
			ClearMenu()
		elseif button == 1 then -- 1=leftclick, 2=rightclick
			ClearMenu()
			for _, option in pairs(data.options) do
				AddMenuItem(option, function() 
					ZDAT.SV.state[data.stateVar] = option 
					ZDAT.UI.Layout.refresh() 
					end)
			end
			ShowMenu(control)
		end
	end
	return ZDAT.UI.Misc.button(data)
end