local Config = {
    WindowName = "Fu Kang Hub V2",
	Color = Color3.fromRGB(255,0,0),
	Keybind = Enum.KeyCode.RightControl
}
repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(A,...)
    local Args = {...}
    local Self = Args[1]
    
    if getnamecallmethod()=="BreakJoints"    then
            return true
    end
    return OldNameCall(A, ...)
end)
for i,v in next, getconnections(game.Players.LocalPlayer.Character.DescendantAdded) do
   v:Disable()
end
for i,v in next, getconnections(game.Players.LocalPlayer.Character.DescendantRemoving) do
   v:Disable()
end
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod() == "InvokeServer" and tostring(self) == "MainEvent" and Args[1] == nil then
            return 
    end
    return OldNameCall(self, table.unpack(Args))
end)
local OldNameCall
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, ...)
    if not checkcaller()  and (B == "WalkSpeed" or B == "JumpPower") then
        return
    end
    return OldNameCall(A, B, ...)
end)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/im-retarded-3"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("3008 [2.7]")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Toggle1 = Section1:CreateToggle("FullBright", nil, function(State)
FullBright = State
        if FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
game.Lighting.Changed:connect(
    function()
        if FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
    end
)
end)
local Toggle1 = Section1:CreateToggle("NoFallDamage", nil, function(State)
getgenv().yea = State
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod() == "FireServer" and self:IsA("RemoteEvent") and Args[3]:match("OriginalDamage") and getgenv().yea then
            return 
    end
    return OldNameCall(self, unpack(Args))
end)
end)

local Toggle1 = Section1:CreateToggle("Employee Esp", nil, function(State)
getgenv().esp1 = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "item"
    T.Size = 14
    T.Color = Color3.fromRGB(203, 214, 73)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChildOfClass("Part") then
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v:FindFirstChildOfClass("Part").Position)
                    if getgenv().esp1 and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v.Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChildOfClass("Part") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end
for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Employees:GetChildren()) do
    if v.ClassName == "Model" and v:FindFirstChildOfClass("Part") then
        esp(v)
    end
end
game:GetService("Workspace").GameObjects.Physical.Employees.DescendantAdded:Connect(
    function(v)
        if v:IsA("Part") then
            esp(v.Parent)
        end
    end
)
end)


local Toggle1 = Section1:CreateToggle("Item Esp", nil, function(State)
getgenv().esp = State
local function esp(v)
    local T = Drawing.new("Text")
    T.Visible = false
    T.Center = true
    T.Outline = true
    T.Font = 2
    T.Text = "item"
    T.Size = 14
    T.Color = Color3.fromRGB(203, 214, 73)
    local function update()
        local Re
        Re =
            game:GetService('RunService').Stepped:Connect(
            function()
                if v and v:FindFirstChildOfClass("MeshPart") then
                    local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v:FindFirstChildOfClass("MeshPart").Position)
                    if getgenv().esp and Screen then
                        T.Position = Vector2.new(Vector.X, Vector.Y)
                        T.Visible = true
                        T.Text = v.Name
                    else
                        T.Visible = false
                    end
                elseif v:FindFirstChildOfClass("MeshPart") == nil then
                    T:Remove()
                    Re:disconnect()
                end
            end
        )
    end
    update()
end
for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetChildren()) do
    if v.ClassName == "Model" and v:FindFirstChildOfClass("MeshPart") then
        esp(v)
    end
end
game:GetService("Workspace").GameObjects.Physical.Items.DescendantAdded:Connect(
    function(v)
        if  v:IsA("MeshPart") then
            esp(v.Parent)
        end
    end
)
end)


local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

local Toggle1 = Section1:CreateToggle("Player Esp", nil, function(State)
    ESP:Toggle(State)
end)
local Toggle1 = Section1:CreateToggle("Tracers Esp", nil, function(State)
    ESP.Tracers = State
end)
local Toggle1 = Section1:CreateToggle("Name Esp", nil, function(State)
    ESP.Names = State
end)
local Toggle1 = Section1:CreateToggle("Boxes Esp", nil, function(State)
    ESP.Boxes = State
end)

local TextBox1 = Section2:CreateTextBox("WalkSpeed", "Only numbers", true, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)
local TextBox1 = Section2:CreateTextBox("JumpPower", "Only numbers", true, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

local Toggle1 = Section2:CreateToggle("N NonePlatFormNoclip", nil, function(State)
hoe = State
game.Players.LocalPlayer:GetMouse().KeyDown:connect(
    function(v)
        if v == "n" then
            NoClip = not NoClip
            game:GetService("RunService").Stepped:connect(
                function()
                    if NoClip then
                     if hoe then
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            pcall(
                                function()
                                    if v.ClassName == "BasePart" or v.ClassName == "MeshPart" then
                                        v.CanCollide = false
                                    end
                                end
                            )
                        end
                    end
                end
            end
            )
        end
    end
)
end)


local Toggle1 = Section2:CreateToggle("K Fly", nil, function(State)
sex2 = State
local Max = 0
local Players = game.Players
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
Mouse.KeyDown:connect(function(k)
if k:lower() == 'k' then
Max = Max + 1
getgenv().Fly = false
if sex2 then
local T = LP.Character.Torso
local S = {
F = 0,
B = 0,
L = 0,
R = 0
}
local S2 = {
F = 0,
B = 0,
L = 0,
R = 0
}
local SPEED = 5
local function FLY()
getgenv().Fly = true
local BodyGyro = Instance.new('BodyGyro', T)
local BodyVelocity = Instance.new('BodyVelocity', T)
BodyGyro.P = 9e4
BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BodyGyro.cframe = T.CFrame
BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
spawn(function()
repeat
wait()
LP.Character.Humanoid.PlatformStand = false
if S.L + S.R ~= 0 or S.F + S.B ~= 0 then
SPEED = 200
elseif not (S.L + S.R ~= 0 or S.F + S.B ~= 0) and SPEED ~= 0 then
SPEED = 0
end
if (S.L + S.R) ~= 0 or (S.F + S.B) ~= 0 then
BodyVelocity.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (S.F + S.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(S.L + S.R, (S.F + S.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
S2 = {
F = S.F,
B = S.B,
L = S.L,
R = S.R
}
elseif (S.L + S.R) == 0 and (S.F + S.B) == 0 and SPEED ~= 0 then
BodyVelocity.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (S2.F + S2.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(S2.L + S2.R, (S2.F + S2.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
end
BodyGyro.cframe = game.Workspace.CurrentCamera.CoordinateFrame
until not getgenv().Fly
S = {
F = 0,
B = 0,
L = 0,
R = 0
}
S2 = {
F = 0,
B = 0,
L = 0,
R = 0
}
SPEED = 0
BodyGyro:destroy()
BodyVelocity:destroy()
LP.Character.Humanoid.PlatformStand = false
end)
end
Mouse.KeyDown:connect(function(k)
if k:lower() == 'w' then
S.F = 1
elseif k:lower() == 's' then
S.B = -1
elseif k:lower() == 'a' then
S.L = -1
elseif k:lower() == 'd' then
S.R = 1
end
end)
Mouse.KeyUp:connect(function(k)
if k:lower() == 'w' then
S.F = 0
elseif k:lower() == 's' then
S.B = 0
elseif k:lower() == 'a' then
S.L = 0
elseif k:lower() == 'd' then
S.R = 0
end
end)
FLY()
if Max == 2 then
getgenv().Fly = false
Max = 0
end
end
end
end)
end)
local Button1 = Section2:CreateButton("ServerHop", function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport() 
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
Section3:CreateLabel("Credits Amoodssy#0828")
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



