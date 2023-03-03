local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fu Kang Hub | จุดพักใจ", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewButton("IY Admin", "IY Admin", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section:NewKeybind("Hide UI", "Fu Kang Hub", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

local Tab = Window:NewTab("TELEPORT")
local Section = Tab:NewSection("TELEPORT")

Section:NewButton("VIP Room", "Fu Kang Hub", function()
    local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(-152.429916, 30.9000092, 1026.71667, -0.419747204, 4.80478235e-08, -0.907641053, -3.52625946e-08, 1, 6.92445496e-08, 0.907641053, 6.10709847e-08, -0.419747204)}):Play()
end)

Section:NewButton("Lobby", "Fu Kang Hub", function()
    local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
{CFrame = CFrame.new(69.3025818, 4.49999809, 308.292999, 0.980761707, -8.28303559e-09, 0.195208684, 1.98088834e-08, 1, -5.70915155e-08, -0.195208684, 5.98600423e-08, 0.980761707)}):Play()
end)
