local Config = {
    WindowName = "Fu Kang Hub V2",
	Color = Color3.fromRGB(255,0,0),
	Keybind = Enum.KeyCode.RightControl
}
repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
game:GetService('RunService').RenderStepped:connect(function()
game:GetService("Players").LocalPlayer.multiJumpCount.Value = 50
if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("statEffectsGui") then
game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui:remove()
end end)
jk = {}
for _,v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
table.insert(jk,v.Name)
end end 
jk1 = {}
for _,v in pairs(game:GetService("ReplicatedStorage").Ranks.Ground:GetDescendants()) do
if v:FindFirstChild("rankColor") then
table.insert(jk1,v.Name)
end end 
jk2 = {}
for _,v in pairs(game:GetService("Workspace").mapCrystalsFolder:GetDescendants()) do
if v:FindFirstChild("Crystal") then
table.insert(jk2,v.Name)
end end 
jk3 = {}
for _,v in pairs(game:GetService("Workspace").bossFolder:GetDescendants()) do
if v:FindFirstChild("HumanoidRootPart") then
table.insert(jk3,v.Name)
end end 

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/im-retarded-3"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Ninja Legends")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")

local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Toggle1 = Section1:CreateToggle("Auto Swing", nil, function(State)
tog1 = State
while tog1 do wait(.1)
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
end  end)

local Toggle1 = Section1:CreateToggle("Auto Sell", nil, function(State)
Sell = State
while Sell do wait(1)

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner, 0) --0 is touch
end  end)
local Button1 = Section1:CreateButton("Unlock All Islands", function()
for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
end
end
end)

local Toggle1 = Section1:CreateToggle("Auto Crystal", nil, function(State)
pets = State
while pets do wait() 
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal",jk2)
end end)

local Dropdown1 = Section1:CreateDropdown("Select Crystal")
Dropdown1:AddToolTip("Select Crystal")
for i,v in next, jk2 do
Dropdown1:AddOption(v, function(String)
jk2 = String
end)
end
local Toggle1 = Section1:CreateToggle("Auto Boss", nil, function(State)
wait1 = State
game:GetService('RunService').Stepped:connect(function()
pcall(function()
if wait1 then
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").bossFolder[jk3]:WaitForChild("HumanoidRootPart").CFrame
end end)
end) end)
local Dropdown1 = Section1:CreateDropdown("Select Boss")
Dropdown1:AddToolTip("Select Boss")
for i,v in next, jk3 do
Dropdown1:AddOption(v, function(String)
jk3 = String
end)
end
local Toggle1 = Section1:CreateToggle("Auto Swords", nil, function(State)
sword = State
while sword do wait()
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllSwords","Blazing Vortex Island")
end
end)
local Toggle1 = Section1:CreateToggle("Auto  Belts", nil, function(State)
Belts = State
while Belts do wait()
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllBelts","Blazing Vortex Island")
end
end)
local Toggle1 = Section1:CreateToggle("Auto Rank", nil, function(State)
Rank = State
while Rank do wait()
  for i = 1, #jk1 do
    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyRank", jk1[i])
end
end end)
local Toggle1 = Section2:CreateToggle("Infinite Jump", nil, function(State)
Infinite = State
game:GetService("UserInputService").JumpRequest:connect(function()
	if Infinite then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end) end)

local Toggle1 = Section2:CreateToggle("G Noclip", nil, function(State)
sex = State
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "g" then
if sex then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end end 
end) end)
local Toggle1 = Section2:CreateToggle("B Fly", nil, function(State)
sex2 = State
local gogo1000 = 0
local LP = game:service('Players').LocalPlayer
local MOUSE = LP:GetMouse()
MOUSE.KeyDown:connect(function(KEY)
if KEY:lower() == 'b' then
if sex2 then
local LP = game:service('Players').LocalPlayer
local MOUSE = LP:GetMouse()
gogo1000 = gogo1000 + 1
_G.FLYING = false
local T = LP.Character.UpperTorso
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
local SPEED = 5
local function FLY()
_G.FLYING = true
local BG = Instance.new('BodyGyro', T)
local BV = Instance.new('BodyVelocity', T)
BG.P = 9e4
BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BG.cframe = T.CFrame
BV.velocity = Vector3.new(0, 0.1, 0)
BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
spawn(function()
repeat wait()
LP.Character.Humanoid.PlatformStand = true
if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
SPEED = 50
elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
SPEED = 0
end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
until not _G.FLYING
CONTROL = {F = 0, B = 0, L = 0, R = 0}
lCONTROL = {F = 0, B = 0, L = 0, R = 0}
SPEED = 0
BG:destroy()
BV:destroy()
LP.Character.Humanoid.PlatformStand = false
end)
end
MOUSE.KeyDown:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 1
elseif KEY:lower() == 's' then
CONTROL.B = -1
elseif KEY:lower() == 'a' then
CONTROL.L = -1 
elseif KEY:lower() == 'd' then 
CONTROL.R = 1
end
end)
MOUSE.KeyUp:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 0
elseif KEY:lower() == 's' then
CONTROL.B = 0
elseif KEY:lower() == 'a' then
CONTROL.L = 0
elseif KEY:lower() == 'd' then
CONTROL.R = 0
end
end)
FLY()
if gogo1000 == 2 then
_G.FLYING = false
gogo1000 = 0
end
end
end
end) end)
local Button1 = Section2:CreateButton("Anti Lag", function()
for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then --- i stole this from the actual game LOL >-<
v.Material = Enum.Material.SmoothPlastic;
if v:IsA("Texture") then
v:Destroy();
end end;		
end;
end)


local Button1 = Section2:CreateButton("Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer) end)

local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
Section3:CreateLabel("Credits x2Sleep#2433 & Amoodssy#0828")
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)
-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image")
local Option7 = Dropdown3:AddOption("Default", function(String)
	Window:SetBackground("2151741365")
end)
local Option8 = Dropdown3:AddOption("Hearts", function(String)
	Window:SetBackground("6073763717")
end)
local Option9 = Dropdown3:AddOption("Abstract", function(String)
	Window:SetBackground("6073743871")
end)
local Option10 = Dropdown3:AddOption("Hexagon", function(String)
	Window:SetBackground("6073628839")
end)
local Option11 = Dropdown3:AddOption("Circles", function(String)
	Window:SetBackground("6071579801")
end)
local Option12 = Dropdown3:AddOption("Lace With Flowers", function(String)
	Window:SetBackground("6071575925")
end)
local Option13 = Dropdown3:AddOption("Floral", function(String)
	Window:SetBackground("5553946656")
end)
Option7:SetOption()

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
