local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fu Kang Hub V2 | City BanNa", "BloodTheme")

local Tab = Window:NewTab("ฟาร์ม")

local Section = Tab:NewSection("กดก่อนฟาร์มเงิน")

Section:NewButton("โหลดแมพ", "Fu Kang Hub Next Generation", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-293.934143, 68.9448776, 511.458649, -0.282466084, -4.49773871e-08, -0.959277272, 7.04825496e-08, 1, -6.76408334e-08, 0.959277272, -8.67185506e-08, -0.282466084)
    wait(1.0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-134.590836, 69.010376, 88.3781967, -0.971948385, -3.62576835e-09, 0.235194251, -3.43948292e-09, 1, 1.20227683e-09, -0.235194251, 3.59604457e-10, -0.971948385)
end)

Section:NewButton("Noclip", "X2sleep", function()
    local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by X2sleep"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
	if Status.Text == "off" then
		Clipon = true
		Status.Text = "on"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "on" then
		Clipon = false
		Status.Text = "off"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)
end)

local Section = Tab:NewSection("ฟาร์มเงิน")

Section:NewButton("ฟาร์มเงินที่ธานาคาร", "ต้องเป็น อาชญากร ฟาร์มทั้งหมด50รอบ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(0.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.721344, 92.1037216, 527.855469, -0.933329761, 3.88909989e-08, -0.359020293, 1.45099408e-08, 1, 7.06044787e-08, 0.359020293, 6.06878956e-08, -0.933329761)
    wait(3.2)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(6.05)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-367.041443, 62.6479225, 488.671539, -0.654191077, 4.41985684e-08, -0.756329298, 5.81664855e-11, 1, 5.83879469e-08, 0.756329298, 3.81528835e-08, -0.654191077)
wait(190.2)
end)

local Tab = Window:NewTab("วาร์ป")

local Section = Tab:NewSection("วาร์ป")

Section:NewButton("ล็อบบี้", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-125.02401, 69.013176, 83.7082062, -0.932572544, 3.87829004e-08, -0.360982627, 7.06248287e-08, 1, -7.50171125e-08, 0.360982627, -9.54532382e-08, -0.932572544)
end)

Section:NewButton("วัด", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-112.754074, 68.5464706, 662.708557, 0.998819888, -1.96818224e-08, -0.0485676415, 1.74704269e-08, 1, -4.59568064e-08, 0.0485676415, 4.5054076e-08, 0.998819888)
end)

Section:NewButton("ส.น.", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(185.215744, 68.4309158, 692.023376, 0.980253279, 7.94037476e-08, -0.197746024, -7.1226836e-08, 1, 4.84632103e-08, 0.197746024, -3.34213972e-08, 0.980253279)
end)

Section:NewButton("ร.ร.", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.827988, 68.046814, 400.054108, 0.00222655199, 7.97332618e-08, 0.999997497, -9.9680868e-09, 1, -7.97112634e-08, -0.999997497, -9.79058079e-09, 0.00222655199)
end)

Section:NewButton("ธนาคาร", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-292.389221, 68.9476776, 511.260345, 0.215025321, 3.31341816e-08, -0.976608455, 1.38282163e-09, 1, 3.42322686e-08, 0.976608455, -8.7112797e-09, 0.215025321)
end)

Section:NewButton("ที่วางไม้", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-549.298462, 103.986237, -340.809143, 0.622556686, 6.90597943e-08, -0.782574713, 5.5379199e-09, 1, 9.26524493e-08, 0.782574713, -6.20152392e-08, 0.622556686)
end)

Section:NewButton("ที่วางหิน", "วาร์ป", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(555.204163, 68.7767487, 100.489883, -0.995281518, -4.9784898e-08, -0.0970291197, -5.89932903e-08, 1, 9.20345684e-08, 0.0970291197, 9.73243743e-08, -0.995281518)
end)

local Tab = Window:NewTab("ตั้งค่า")
local Section = Tab:NewSection("ซ่อน Ui")

Section:NewKeybind("ซ่อน Ui", "ตั้งปุ่มที่เราต้องการให้ซ่อน Ui", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
