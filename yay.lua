-- эта вся хуйня для меня тупого

-- Библиотека
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
-- Само окно скрипта
local Window = OrionLib:MakeWindow({Name = "arabnik team script", HidePremium = false, SaveConfig = false, ConfigFolder = "ttest"})

-- Сообщение

OrionLib:MakeNotification({
	Name = "by: anti_arabnik",
	Content = "Спасибо за покупку Премиума!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- Секции

local Character = Window:MakeTab({
Name = "Персонаж",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Scripts = Window:MakeTab({
Name = "Скрипты",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
-- Главная

Character:AddSlider({
	Name = "Скорость",
	Min = 0,
	Max = 32,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end    
})

Character:AddSlider({
	Name = "Сила прыжка",
	Min = 0,
	Max = 50,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Сила прыжка",
	Callback = function(j)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
	end    
})

Character:AddBind({
	Name = "Кейбинд чтобы 💀",
	Default = Enum.KeyCode.R,
	Hold = false,
	Callback = function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end    
})

Scripts:AddButton({
	Name = "arabnik script hub",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/arabnik/.my-script/refs/heads/main/arabnik-script-hub.lua')))()
  	end    
})

Scripts:AddToggle({
	Name = "ESP",
	Default = false,
	Callback = function(Value)
		
	end    
})
OrionLib:Init()
