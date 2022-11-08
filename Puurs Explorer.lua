-- Explorer ScreenGui
local Explorer = Instance.new("ScreenGui")

-- Locals
local tween = game:GetService("TweenService")
local uis = game:GetService("UserInputService");

-- MainFrame
local MainFrame = Instance.new("Frame")

-- UpperFrame
local UpperFrame = Instance.new("Frame")

-- Name
local Name = Instance.new("TextLabel")

-- MiddleFrame
local MiddleFrame = Instance.new("Frame")

-- Left Frame
local LeftFrame = Instance.new("ScrollingFrame")

-- UIS
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

-- Buttons

-- Button 1 Workspace
local Workspaces = Instance.new("TextButton")

-- Button 2 Players
local Players = Instance.new("TextButton")

-- Button 3 ReplicatedStorage
local ReplicatedStorage = Instance.new("TextButton")

-- Button 4 Character
local Characters = Instance.new("TextButton")

-- Button 5 Backpack
local Backpack = Instance.new("TextButton")

-- Button 6 PlayerGui
local PlayerGui = Instance.new("TextButton")

-- Button 7 PlayerScripts
local PlayerScripts = Instance.new("TextButton")

-- Container
local Container = Instance.new("Folder")

-- Frame 1
local RightFrame1 = Instance.new("ScrollingFrame")
local UIPadding_2 = Instance.new("UIPadding")
local UIListLayout_2 = Instance.new("UIListLayout")

-- Frame 2
local RightFrame2 = Instance.new("ScrollingFrame")
local UIPadding_12 = Instance.new("UIPadding")
local UIListLayout_12 = Instance.new("UIListLayout")

-- Frame 3
local RightFrame3 = Instance.new("ScrollingFrame")
local UIPadding_11 = Instance.new("UIPadding")
local UIListLayout_11 = Instance.new("UIListLayout")

-- Frame 4
local RightFrame4 = Instance.new("ScrollingFrame")
local UIPadding_3 = Instance.new("UIPadding")
local UIListLayout_3 = Instance.new("UIListLayout")

-- Frame 5
local RightFrame5 = Instance.new("ScrollingFrame")
local UIPadding_4 = Instance.new("UIPadding")
local UIListLayout_4 = Instance.new("UIListLayout")

-- Frame 6
local RightFrame6 = Instance.new("ScrollingFrame")
local UIPadding_5 = Instance.new("UIPadding")
local UIListLayout_5 = Instance.new("UIListLayout")

-- Frame 7
local RightFrame7 = Instance.new("ScrollingFrame")
local UIPadding_6 = Instance.new("UIPadding")
local UIListLayout_6 = Instance.new("UIListLayout")

-- Apperance
Explorer.Name = "Explorer"
Explorer.Parent = game.CoreGui
Explorer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- MainFrame Configeration
MainFrame.Name = "MainFrame"
MainFrame.Parent = Explorer
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
MainFrame.BorderColor3 = Color3.fromRGB(130, 130, 130)
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 200, 0, 200)
MainFrame.ZIndex = 6

local drag = {};local debounce = false
function unit(inputs)
	MainFrame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			debounce = true
			drag[2] = input.Position
			drag[3] = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					debounce = false
				end
			end)
		end
	end)
end
unit()
uis.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if debounce then
			local pos = input.Position - drag[2]
			tween:Create(MainFrame,TweenInfo.new(0.1), {Position = UDim2.new(drag[3].X.Scale, drag[3].X.Offset + pos.X, drag[3].Y.Scale, drag[3].Y.Offset + pos.Y)}):Play()
		end
	end
end)

-- UpperFrame Configeration
UpperFrame.Name = "UpperFrame"
UpperFrame.Parent = MainFrame
UpperFrame.AnchorPoint = Vector2.new(0.5, 0.5)
UpperFrame.BackgroundColor3 = Color3.fromRGB(202, 202, 202)
UpperFrame.BorderColor3 = Color3.fromRGB(157, 157, 157)
UpperFrame.ClipsDescendants = true
UpperFrame.Position = UDim2.new(0.498999953, 0, 0.0709999874, 0)
UpperFrame.Size = UDim2.new(0, 190, 0, 20)

-- Name Configeration
Name.Name = "Name"
Name.Parent = UpperFrame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0033572549, 0, 0.0209999084, 0)
Name.Size = UDim2.new(0, 194, 0, 19)
Name.Font = Enum.Font.Gotham
Name.Text = "Puurs Explorer 2022"
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextSize = 13.000

-- MiddleFrame Configeration
MiddleFrame.Name = "MiddleFrame"
MiddleFrame.Parent = MainFrame
MiddleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MiddleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiddleFrame.BorderColor3 = Color3.fromRGB(140, 140, 140)
MiddleFrame.ClipsDescendants = true
MiddleFrame.Position = UDim2.new(0.499689341, 0, 0.563083172, 0)
MiddleFrame.Size = UDim2.new(0, 189, 0, 162)

-- LeftFrame Configeration
LeftFrame.Name = "LeftFrame"
LeftFrame.Parent = MiddleFrame
LeftFrame.Active = true
LeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftFrame.BorderColor3 = Color3.fromRGB(100, 100, 100)
LeftFrame.Size = UDim2.new(0, 63, 0, 162)
LeftFrame.CanvasPosition = Vector2.new(0, 0)
LeftFrame.CanvasSize = UDim2.new(0, 0, 1.15, 0)
LeftFrame.ScrollBarThickness = 0

-- UIS Configeration
UIListLayout.Parent = LeftFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

UIPadding.Parent = LeftFrame
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 4)

-- Button 1 Workspace Configeration
Workspaces.Name = "Workspace"
Workspaces.Parent = LeftFrame
Workspaces.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
Workspaces.BorderColor3 = Color3.fromRGB(126, 126, 126)
Workspaces.Size = UDim2.new(0, 53, 0, 22)
Workspaces.Font = Enum.Font.Gotham
Workspaces.Text = "Workspace"
Workspaces.TextColor3 = Color3.fromRGB(0, 0, 0)
Workspaces.TextScaled = true
Workspaces.TextSize = 9.000
Workspaces.TextWrapped = true
Workspaces.MouseButton1Click:Connect(function()
	RightFrame1.Visible = true
	RightFrame2.Visible = false
	RightFrame3.Visible = false
	RightFrame4.Visible = false
	RightFrame5.Visible = false
	RightFrame6.Visible = false
	RightFrame7.Visible = false
end)

-- Button 2 Players Configeration
Players.Name = "Players"
Players.Parent = LeftFrame
Players.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
Players.BorderColor3 = Color3.fromRGB(126, 126, 126)
Players.Size = UDim2.new(0, 53, 0, 22)
Players.Font = Enum.Font.Gotham
Players.Text = "Players"
Players.TextColor3 = Color3.fromRGB(0, 0, 0)
Players.TextSize = 10.000
Players.TextWrapped = true
Players.MouseButton1Click:Connect(function()
	RightFrame1.Visible = false
	RightFrame2.Visible = true
	RightFrame3.Visible = false
	RightFrame4.Visible = false
	RightFrame5.Visible = false
	RightFrame6.Visible = false
	RightFrame7.Visible = false
end)

-- Button 3 ReplicatedStorage Configeration
ReplicatedStorage.Name = "ReplicatedStorage"
ReplicatedStorage.Parent = LeftFrame
ReplicatedStorage.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
ReplicatedStorage.BorderColor3 = Color3.fromRGB(126, 126, 126)
ReplicatedStorage.Size = UDim2.new(0, 53, 0, 22)
ReplicatedStorage.Font = Enum.Font.Gotham
ReplicatedStorage.Text = "ReplicatedStorage"
ReplicatedStorage.TextColor3 = Color3.fromRGB(0, 0, 0)
ReplicatedStorage.TextSize = 10.000
ReplicatedStorage.TextWrapped = true
ReplicatedStorage.MouseButton1Click:Connect(function()
	RightFrame1.Visible = false
	RightFrame2.Visible = false
	RightFrame3.Visible = true
	RightFrame4.Visible = false
	RightFrame5.Visible = false
	RightFrame6.Visible = false
	RightFrame7.Visible = false
end)

-- Button 4 Character Configeration
Characters.Name = "Characters"
Characters.Parent = LeftFrame
Characters.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
Characters.BorderColor3 = Color3.fromRGB(126, 126, 126)
Characters.Size = UDim2.new(0, 53, 0, 22)
Characters.Font = Enum.Font.Gotham
Characters.Text = "Characters"
Characters.TextColor3 = Color3.fromRGB(0, 0, 0)
Characters.TextSize = 9.000
Characters.TextWrapped = true
Characters.MouseButton1Click:Connect(function()
	RightFrame1.Visible = false
	RightFrame2.Visible = false
	RightFrame3.Visible = false
	RightFrame4.Visible = true
	RightFrame5.Visible = false
	RightFrame6.Visible = false
	RightFrame7.Visible = false
end)

-- Button 5 Backpack Configeration
Backpack.Name = "Backpack"
Backpack.Parent = LeftFrame
Backpack.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
Backpack.BorderColor3 = Color3.fromRGB(126, 126, 126)
Backpack.Size = UDim2.new(0, 53, 0, 22)
Backpack.Font = Enum.Font.Gotham
Backpack.Text = "Backpack"
Backpack.TextColor3 = Color3.fromRGB(0, 0, 0)
Backpack.TextSize = 9.000
Backpack.TextWrapped = true
Backpack.MouseButton1Click:Connect(function()
	RightFrame1.Visible = false
	RightFrame2.Visible = false
	RightFrame3.Visible = false
	RightFrame4.Visible = false
	RightFrame5.Visible = true
	RightFrame6.Visible = false
	RightFrame7.Visible = false
end)

-- Button 6 PlayerGui Configeration
PlayerGui.Name = "PlayerGui"
PlayerGui.Parent = LeftFrame
PlayerGui.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
PlayerGui.BorderColor3 = Color3.fromRGB(126, 126, 126)
PlayerGui.Size = UDim2.new(0, 53, 0, 22)
PlayerGui.Font = Enum.Font.Gotham
PlayerGui.Text = "PlayerGui"
PlayerGui.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayerGui.TextSize = 9.000
PlayerGui.TextWrapped = true
PlayerGui.MouseButton1Click:Connect(function()
	RightFrame1.Visible = false
	RightFrame2.Visible = false
	RightFrame3.Visible = false
	RightFrame4.Visible = false
	RightFrame5.Visible = false
	RightFrame6.Visible = true
	RightFrame7.Visible = false
end)

-- Button 7 PlayersScripts Configeration
PlayerScripts.Name = "PlayerScripts"
PlayerScripts.Parent = LeftFrame
PlayerScripts.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
PlayerScripts.BorderColor3 = Color3.fromRGB(126, 126, 126)
PlayerScripts.Size = UDim2.new(0, 53, 0, 22)
PlayerScripts.Font = Enum.Font.Gotham
PlayerScripts.Text = "PlayerScripts"
PlayerScripts.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayerScripts.TextWrapped = true
PlayerScripts.MouseButton1Click:Connect(function()
	RightFrame1.Visible = false
	RightFrame2.Visible = false
	RightFrame3.Visible = false
	RightFrame4.Visible = false
	RightFrame5.Visible = false
	RightFrame6.Visible = false
	RightFrame7.Visible = true
end)

-- Container
Container.Name = "Container"
Container.Parent = MiddleFrame

-- Frame 1 Configeration
RightFrame1.Name = "RightFrame1"
RightFrame1.Parent = Container
RightFrame1.Active = true
RightFrame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame1.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame1.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame1.Size = UDim2.new(0, 126, 0, 162)
RightFrame1.ScrollBarThickness = 0

UIPadding_2.Parent = RightFrame1
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIPadding_2.PaddingTop = UDim.new(0, 4)

UIListLayout_2.Parent = RightFrame1
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 4)
RightFrame1.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_2.AbsoluteContentSize.Y)
RightFrame1.ChildAdded:Connect(function()
	RightFrame1.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_2.AbsoluteContentSize.Y + UIListLayout_2.Padding.Offset)
end)

-- Frame 2 Configeration
RightFrame2.Name = "RightFrame2"
RightFrame2.Parent = Container
RightFrame2.Active = true
RightFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame2.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame2.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame2.Size = UDim2.new(0, 126, 0, 162)
RightFrame2.Visible = false
RightFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
RightFrame2.ScrollBarThickness = 0

UIPadding_12.Parent = RightFrame2
UIPadding_12.PaddingLeft = UDim.new(0, 5)
UIPadding_12.PaddingTop = UDim.new(0, 4)

UIListLayout_12.Parent = RightFrame2
UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_12.Padding = UDim.new(0, 4)
RightFrame2.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_12.AbsoluteContentSize.Y)
RightFrame2.ChildAdded:Connect(function()
	RightFrame2.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_12.AbsoluteContentSize.Y + UIListLayout_12.Padding.Offset)
end)

-- Frame 3 Configeration
RightFrame3.Name = "RightFrame3"
RightFrame3.Parent = Container
RightFrame3.Active = true
RightFrame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame3.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame3.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame3.Size = UDim2.new(0, 126, 0, 162)
RightFrame3.Visible = false
RightFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
RightFrame3.ScrollBarThickness = 0

UIPadding_11.Parent = RightFrame3
UIPadding_11.PaddingLeft = UDim.new(0, 5)
UIPadding_11.PaddingTop = UDim.new(0, 4)

UIListLayout_11.Parent = RightFrame3
UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_11.Padding = UDim.new(0, 4)
RightFrame3.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_11.AbsoluteContentSize.Y)
RightFrame3.ChildAdded:Connect(function()
	RightFrame3.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_11.AbsoluteContentSize.Y + UIListLayout_11.Padding.Offset)
end)

-- Frame 4 Configeration
RightFrame4.Name = "RightFrame4"
RightFrame4.Parent = Container
RightFrame4.Active = true
RightFrame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame4.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame4.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame4.Size = UDim2.new(0, 126, 0, 162)
RightFrame4.Visible = false
RightFrame4.CanvasSize = UDim2.new(0, 0, 0, 0)
RightFrame4.ScrollBarThickness = 0

UIPadding_3.Parent = RightFrame4
UIPadding_3.PaddingLeft = UDim.new(0, 5)
UIPadding_3.PaddingTop = UDim.new(0, 4)

UIListLayout_3.Parent = RightFrame4
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 4)
RightFrame4.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_3.AbsoluteContentSize.Y)
RightFrame4.ChildAdded:Connect(function()
	RightFrame4.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_3.AbsoluteContentSize.Y + UIListLayout_3.Padding.Offset)
end)

-- Frame 5 Configeration
RightFrame5.Name = "RightFrame5"
RightFrame5.Parent = Container
RightFrame5.Active = true
RightFrame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame5.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame5.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame5.Size = UDim2.new(0, 126, 0, 162)
RightFrame5.Visible = false
RightFrame5.CanvasSize = UDim2.new(0, 0, 0, 0)
RightFrame5.ScrollBarThickness = 0

UIPadding_4.Parent = RightFrame5
UIPadding_4.PaddingLeft = UDim.new(0, 5)
UIPadding_4.PaddingTop = UDim.new(0, 4)

UIListLayout_4.Parent = RightFrame5
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 4)
RightFrame5.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_4.AbsoluteContentSize.Y)
RightFrame5.ChildAdded:Connect(function()
	RightFrame5.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_4.AbsoluteContentSize.Y + UIListLayout_4.Padding.Offset)
end)

-- Frame 6 Configeration
RightFrame6.Name = "RightFrame6"
RightFrame6.Parent = Container
RightFrame6.Active = true
RightFrame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame6.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame6.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame6.Size = UDim2.new(0, 126, 0, 162)
RightFrame6.Visible = false
RightFrame6.CanvasSize = UDim2.new(0, 0, 0, 0)
RightFrame6.ScrollBarThickness = 0

UIPadding_5.Parent = RightFrame6
UIPadding_5.PaddingLeft = UDim.new(0, 5)
UIPadding_5.PaddingTop = UDim.new(0, 4)

UIListLayout_5.Parent = RightFrame6
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 4)
RightFrame6.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_5.AbsoluteContentSize.Y)
RightFrame6.ChildAdded:Connect(function()
	RightFrame6.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_5.AbsoluteContentSize.Y + UIListLayout_5.Padding.Offset)
end)

-- Frame 7 Configeration
RightFrame7.Name = "RightFrame7"
RightFrame7.Parent = Container
RightFrame7.Active = true
RightFrame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightFrame7.BorderColor3 = Color3.fromRGB(103, 102, 102)
RightFrame7.Position = UDim2.new(0.333333343, 0, 0, 0)
RightFrame7.Size = UDim2.new(0, 126, 0, 162)
RightFrame7.Visible = false
RightFrame7.CanvasSize = UDim2.new(0, 0, 0, 0)
RightFrame7.ScrollBarThickness = 0

UIPadding_6.Parent = RightFrame7
UIPadding_6.PaddingLeft = UDim.new(0, 5)
UIPadding_6.PaddingTop = UDim.new(0, 4)

UIListLayout_6.Parent = RightFrame7
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 4)
RightFrame7.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_6.AbsoluteContentSize.Y)
RightFrame7.ChildAdded:Connect(function()
	RightFrame7.CanvasSize = UDim2.new(0.17, 0.17, 0.17, UIListLayout_6.AbsoluteContentSize.Y + UIListLayout_6.Padding.Offset)
end)

-- Scripts
while true do
	for int, value in pairs(game.Workspace:GetChildren()) do
		local TextLabel1 = Instance.new("TextLabel")

		TextLabel1.Name = "TextLabel1"
		TextLabel1.Parent = RightFrame1
		TextLabel1.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel1.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel1.Size = UDim2.new(0, 117, 0, 20)
		TextLabel1.Font = Enum.Font.Gotham
		TextLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel1.TextSize = 9.000
		TextLabel1.TextWrapped = true
		TextLabel1.Text = value.Name
	end
	for int, value in pairs(game.Players:GetChildren()) do
		local TextLabel2 = Instance.new("TextLabel")
		
		TextLabel2.Name = "TextLabel2"
		TextLabel2.Parent = RightFrame2
		TextLabel2.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel2.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel2.Size = UDim2.new(0, 117, 0, 20)
		TextLabel2.Font = Enum.Font.Gotham
		TextLabel2.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel2.TextSize = 9.000
		TextLabel2.TextWrapped = true
		TextLabel2.Text = value.Name
	end
	for int, value in pairs(game.ReplicatedStorage:GetChildren()) do
		local TextLabel3 = Instance.new("TextLabel")
		
		TextLabel3.Name = "TextLabel3"
		TextLabel3.Parent = RightFrame3
		TextLabel3.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel3.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel3.Size = UDim2.new(0, 117, 0, 20)
		TextLabel3.Font = Enum.Font.Gotham
		TextLabel3.Text = value.Name
		TextLabel3.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel3.TextSize = 9.000
		TextLabel3.TextWrapped = true
	end
	for int, value in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		local TextLabel4 = Instance.new("TextLabel")

		TextLabel4.Name = "TextLabel4"
		TextLabel4.Parent = RightFrame4
		TextLabel4.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel4.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel4.Size = UDim2.new(0, 117, 0, 20)
		TextLabel4.Font = Enum.Font.Gotham
		TextLabel4.Text = value.Name
		TextLabel4.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel4.TextSize = 9.000
		TextLabel4.TextWrapped = true
	end
	for int, value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		local TextLabel5 = Instance.new("TextLabel")
		
		TextLabel5.Name = "TextLabel5"
		TextLabel5.Parent = RightFrame5
		TextLabel5.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel5.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel5.Size = UDim2.new(0, 117, 0, 20)
		TextLabel5.Font = Enum.Font.Gotham
		TextLabel5.Text = value.Name
		TextLabel5.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel5.TextSize = 9.000
		TextLabel5.TextWrapped = true
	end
	for int, value in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
		local TextLabel6 = Instance.new("TextLabel")
		
		TextLabel6.Name = "TextLabel6"
		TextLabel6.Parent = RightFrame6
		TextLabel6.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel6.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel6.Size = UDim2.new(0, 117, 0, 20)
		TextLabel6.Font = Enum.Font.Gotham
		TextLabel6.Text = value.Name
		TextLabel6.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel6.TextSize = 9.000
		TextLabel6.TextWrapped = true
	end
	for int, value in pairs(game.Players.LocalPlayer.PlayerScripts:GetChildren()) do
		local TextLabel7 = Instance.new("TextLabel")
		
		TextLabel7.Name = "TextLabel7"
		TextLabel7.Parent = RightFrame7
		TextLabel7.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
		TextLabel7.BorderColor3 = Color3.fromRGB(113, 113, 113)
		TextLabel7.Size = UDim2.new(0, 117, 0, 20)
		TextLabel7.Font = Enum.Font.Gotham
		TextLabel7.Text = value.Name
		TextLabel7.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel7.TextSize = 9.000
		TextLabel7.TextWrapped = true
	end
	wait(20)
	for int, value in pairs(RightFrame1:GetChildren()) do
		if value.Name == "TextLabel1" then
			value:Destroy()
		end
	end
	for int, value in pairs(RightFrame2:GetChildren()) do
		if value.Name == "TextLabel2" then
			value:Destroy()
		end
	end
	for int, value in pairs(RightFrame3:GetChildren()) do
		if value.Name == "TextLabel3" then
			value:Destroy()
		end
	end
	for int, value in pairs(RightFrame4:GetChildren()) do
		if value.Name == "TextLabel4" then
			value:Destroy()
		end
	end
	for int, value in pairs(RightFrame5:GetChildren()) do
		if value.Name == "TextLabel5" then
			value:Destroy()
		end
	end
	for int, value in pairs(RightFrame6:GetChildren()) do
		if value.Name == "TextLabel6" then
			value:Destroy()
		end
	end
	for int, value in pairs(RightFrame7:GetChildren()) do
		if value.Name == "TextLabel7" then
			value:Destroy()
		end
	end
end

if Explorer ~= nil then
    Explorer:Destroy()
end
