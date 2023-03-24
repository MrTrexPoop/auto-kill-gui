local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local nav = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local name = Instance.new("TextBox")
local TextLabel2 = Instance.new("TextLabel")
local onoff = Instance.new("TextLabel")
local usi = game:GetService("UserInputService")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
main.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
main.Position = UDim2.new(0.244057044, 0, 0.0857142881, 0)
main.Size = UDim2.new(0.191759109, 0, 0.392063498, 0)
main.Active = true
main.Draggable = true

nav.Name = "nav"
nav.Parent = main
nav.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
nav.BorderColor3 = Color3.new(0.372549, 0.372549, 0.372549)
nav.Position = UDim2.new(0, 0, -0.00335453986, 0)
nav.Size = UDim2.new(1.00000024, 0, 0.177488595, 0)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0.372549, 0.372549, 0.372549)
TextLabel.Position = UDim2.new(0.0578512326, 0, 0.234817818, 0)
TextLabel.Size = UDim2.new(0.46280992, 0, 0.117408909, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Enter name:"
TextLabel.TextColor3 = Color3.new(0.568627, 0.568627, 0.568627)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

name.Name = "name"
name.Parent = main
name.BackgroundColor3 = Color3.new(1, 1, 1)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.05785124, 0, 0.352226704, 0)
name.Size = UDim2.new(0.822314024, 0, 0.133603245, 0)
name.Font = Enum.Font.SourceSans
name.Text = ""
name.TextColor3 = Color3.new(0, 0, 0)
name.TextSize = 14

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = main
TextLabel2.BackgroundColor3 = Color3.new(0.372549, 0.372549, 0.372549)
TextLabel2.BackgroundTransparency = 1
TextLabel2.BorderColor3 = Color3.new(0.372549, 0.372549, 0.372549)
TextLabel2.Position = UDim2.new(0.0578512326, 0, 0.558704436, 0)
TextLabel2.Size = UDim2.new(0.46280992, 0, 0.117408909, 0)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Text = "Keybind: ]"
TextLabel2.TextColor3 = Color3.new(0.568627, 0.568627, 0.568627)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14
TextLabel2.TextWrapped = true

onoff.Name = "onoff"
onoff.Parent = main
onoff.BackgroundColor3 = Color3.new(170, 0, 0)
onoff.BorderColor3 = Color3.new(170, 0, 0)
onoff.Position = UDim2.new(0.05785124, 0, 0.704453409, 0)
onoff.Size = UDim2.new(0.623966932, 0, 0.117408909, 0)
onoff.Font = Enum.Font.SourceSans
onoff.Text = "off"
onoff.TextColor3 = Color3.new(1, 1, 1)
onoff.TextScaled = true
onoff.TextSize = 14
onoff.TextWrapped = true


local off = true
local player = game.Players.LocalPlayer
usi.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftBracket then
		if off then
			off = false
			onoff.BackgroundColor3 = Color3.new(0, 170, 0)
			onoff.BorderColor3 = Color3.new(0, 170, 0)
			onoff.Text = "on"
		elseif not off then
			off = true
			onoff.BackgroundColor3 = Color3.new(170, 0, 0)
			onoff.BorderColor3 = Color3.new(170, 0, 0)
			onoff.Text = "off"
			while not off do
				wait(0.1)
				if game.Players:FindFirstChild(name.Text) and game.Players:FindFirstChild(name.Text).Character.Humanoid.Health > 0 then
					player.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(name.Text).Character.HumanoidRootPart.CFrame
				end
			end
		end
	end
end)
