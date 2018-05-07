local GuiObject = import("./GuiObject")
local InstanceProperty = import("../InstanceProperty")
local Signal = import("../Signal")
local GuiButton = GuiObject:extend("GuiButton")

GuiButton.properties.Activated = InstanceProperty.normal({
	getDefault = function()
		return Signal.new()
	end,
})

GuiButton.properties.MouseButton1Click = InstanceProperty.normal({
	getDefault = function()
		return Signal.new()
	end,
})

return GuiButton