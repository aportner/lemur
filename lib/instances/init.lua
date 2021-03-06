local names = {
	"AnalyticsService",
	"BindableEvent",
	"BoolValue",
	"Camera",
	"ContentProvider",
	"CoreGui",
	"CorePackages",
	"Folder",
	"Frame",
	"Game",
	"GuiButton",
	"GuiObject",
	"GuiService",
	"HttpService",
	"ImageButton",
	"ImageLabel",
	"IntValue",
	"LocalizationService",
	"LocalizationTable",
	"LocalScript",
	"ModuleScript",
	"NotificationService",
	"ObjectValue",
	"Player",
	"Players",
	"ReplicatedStorage",
	"RunService",
	"ScreenGui",
	"Script",
	"ScrollingFrame",
	"Stats",
	"StringValue",
	"TestService",
	"TextButton",
	"TextLabel",
	"TextService",
	"TweenService",
	"UIGridStyleLayout",
	"UIListLayout",
	"UIPadding",
	"UserInputService",
	"VirtualInputManager",
	"Workspace",
}

local instances = {}

for _, name in ipairs(names) do
	instances[name] = import("./" .. name)
end

return instances