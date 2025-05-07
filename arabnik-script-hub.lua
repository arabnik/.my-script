-- Arabnik Script Hub

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("arabnik script hub", "RJTheme6")

local Tab = Window:NewTab("Scripts")

local Section = Tab:NewSection("Scripts(не мои)")

Section:NewButton("IY FE", "Infinite Yield FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Section:NewButton("Dex Для IY", "Dex Для Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

Section:NewButton("DDex V3", "Dark Dex V3", function()
    if game:GetService'CoreGui':FindFirstChild'Dex' then
    game:GetService'CoreGui'.Dex:Destroy();
end

math.randomseed(tick())

local charset = {}
for i = 48,  57 do table.insert(charset, string.char(i)) end
for i = 65,  90 do table.insert(charset, string.char(i)) end
for i = 97, 122 do table.insert(charset, string.char(i)) end
function RandomCharacters(length)
  if length > 0 then
    return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
  else
    return ""
  end
end

local Dex = game:GetObjects("rbxassetid://3567096419")[1]
Dex.Name = RandomCharacters(math.random(5, 20))
Dex.Parent = game:GetService("CoreGui")
    
local function Load(Obj, Url)
local function GiveOwnGlobals(Func, Script)
    local Fenv = {}
    local RealFenv = {script = Script}
    local FenvMt = {}
    FenvMt.__index = function(a,b)
        if RealFenv[b] == nil then
            return getfenv()[b]
        else
            return RealFenv[b]
        end
    end
    FenvMt.__newindex = function(a, b, c)
        if RealFenv[b] == nil then
            getfenv()[b] = c
        else
            RealFenv[b] = c
        end
    end
    setmetatable(Fenv, FenvMt)
    setfenv(Func, Fenv)
    return Func
end

local function LoadScripts(Script)
    if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
        spawn(function()
            GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
        end)
    end
    for i,v in pairs(Script:GetChildren()) do
        LoadScripts(v)
    end
end

LoadScripts(Obj)
end

Load(Dex)
end)

Section:NewButton("Dex V2", "White Dex V2", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

local Section = Tab:NewSection("Scripts(мои)")

Section:NewButton("Скрипт для собирания кредитов в Hide & Seek", "Используйте его с силой прыжка 200+", function()
    for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Credit' then
    v.CFrame = game:GetService("Workspace").anti_arabnik.HumanoidRootPart.CFrame

    end
    end
end)
