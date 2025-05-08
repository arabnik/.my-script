-- эта вся хуйня для меня тупого

-- Библиотека
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
-- Само окно скрипта
local Window = OrionLib:MakeWindow({Name = "arabnik team script(free)", HidePremium = true, SaveConfig = false, ConfigFolder = "cfg"})

-- Сообщение

OrionLib:MakeNotification({
	Name = "by: anti_arabnik",
	Content = "Купите премиум скрипт, чтобы получить полный функционал!",
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
PremiumOnly = true
})

-- Главная

Character:AddSlider({
	Name = "Скорость",
	Min = 0,
	Max = 64,
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
	Max = 100,
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

-- Скрипты

Scripts:AddButton({
	Name = "arabnik script hub",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/arabnik/.my-script/refs/heads/main/arabnik-script-hub.lua')))()
  	end    
})
OrionLib:Init()
