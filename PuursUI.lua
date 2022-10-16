local tween = game:GetService("TweenService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService");
local puurs = {}

function puurs.ui()
	local UILibrary = Instance.new("ScreenGui")
	local FrameMain = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local FrameTop = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local FrameFix = Instance.new("Frame")
	local FrameLinear = Instance.new("Frame")
	local TextLabelName = Instance.new("TextLabel")
	local FrameTabs = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local FolderContainers = Instance.new("Folder")
	local TextButtonClose = Instance.new("TextButton")

	UILibrary.Name = "[UI Library]"
	UILibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	UILibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	FrameMain.Name = "[Frame/Main]"
	FrameMain.Parent = UILibrary
	FrameMain.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameMain.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	FrameMain.BorderSizePixel = 0
	FrameMain.Position = UDim2.new(0.5, 0, 0.5, 0)
	FrameMain.Size = UDim2.new(0, 0, 0, 0)
	FrameMain.ClipsDescendants = true
	tween:Create(FrameMain,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 450, 0, 350)}):Play()
	
	local drag = {};local debounce = false
	function unit(inputs)
		FrameMain.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				debounce = true
				drag[2] = input.Position
				drag[3] = FrameMain.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						debounce = false
					end
				end)
			end
		end)
	end
	unit(inputs)
	uis.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if debounce then
				local pos = input.Position - drag[2]
				tween:Create(FrameMain,TweenInfo.new(0.1), {Position = UDim2.new(drag[3].X.Scale, drag[3].X.Offset + pos.X, drag[3].Y.Scale, drag[3].Y.Offset + pos.Y)}):Play()
			end
		end
	end)

	local click = Instance.new("Sound")
	click.Name = "[Sound/Click]"
	click.Parent = FrameMain
	click.SoundId = "rbxassetid://6652808984"
	click.Volume = 1

	local main = Instance.new("Sound")
	main.Name = "[Sound/Main]"
	main.Parent = FrameMain
	main.SoundId = "rbxassetid://542332175"
	main.Volume = 1
	main.PlaybackSpeed = 0.1

	main:Play()

	local enter = Instance.new("Sound")
	enter.Name = "[Sound/Typing]"
	enter.Parent = FrameMain
	enter.SoundId = "rbxassetid://9119720940"
	enter.Volume = 1

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Name = "[UICorner]"
	UICorner.Parent = FrameMain

	FrameTop.Name = "[Frame/Top]"
	FrameTop.Parent = FrameMain
	FrameTop.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameTop.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	FrameTop.BorderColor3 = Color3.fromRGB(27, 42, 53)
	FrameTop.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
	FrameTop.Size = UDim2.new(0, 450, 0, 35)

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Name = "[UICorner]"
	UICorner_2.Parent = FrameTop

	FrameFix.Name = "[Frame/Fix]"
	FrameFix.Parent = FrameTop
	FrameFix.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameFix.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	FrameFix.BorderSizePixel = 0
	FrameFix.Position = UDim2.new(0.5, 0, 0.865295529, 0)
	FrameFix.Size = UDim2.new(0, 450, 0, 9)

	FrameLinear.Name = "[Frame/Linear]"
	FrameLinear.Parent = FrameTop
	FrameLinear.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameLinear.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	FrameLinear.BorderSizePixel = 0
	FrameLinear.Position = UDim2.new(0.5, 0, 1.01672411, 0)
	FrameLinear.Size = UDim2.new(0, 450, 0, 2)

	TextLabelName.Name = "[TextLabel/Name]"
	TextLabelName.Parent = FrameTop
	TextLabelName.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabelName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabelName.BackgroundTransparency = 1.000
	TextLabelName.Position = UDim2.new(0.0877777785, 0, 0.502159774, 0)
	TextLabelName.Size = UDim2.new(0, 54, 0, 26)
	TextLabelName.Font = Enum.Font.Gotham
	TextLabelName.Text = "Puurs"
	TextLabelName.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabelName.TextSize = 17.000
	TextLabelName.TextXAlignment = Enum.TextXAlignment.Left

	FrameTabs.Name = "[Frame/Tabs]"
	FrameTabs.Parent = FrameMain
	FrameTabs.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameTabs.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	FrameTabs.BorderSizePixel = 0
	FrameTabs.Position = UDim2.new(0.138888896, 0, 0.552142859, 0)
	FrameTabs.Size = UDim2.new(0, 125, 0, 313)

	UIListLayout.Name = "[UIListLayout]"
	UIListLayout.Parent = FrameTabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	UIPadding.Name = "[UIPadding]"
	UIPadding.Parent = FrameTabs
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 2)

	FolderContainers.Name = "[Folder/Containers]"
	FolderContainers.Parent = FrameMain

	TextButtonClose.Name = "[TextButton/Close]"
	TextButtonClose.Parent = FrameMain
	TextButtonClose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButtonClose.BackgroundTransparency = 1.000
	TextButtonClose.Position = UDim2.new(0.911111116, 0, 0, 0)
	TextButtonClose.Size = UDim2.new(0, 40, 0, 36)
	TextButtonClose.Font = Enum.Font.Gotham
	TextButtonClose.Text = "[]"
	TextButtonClose.TextColor3 = Color3.fromRGB(106,106,106)
	TextButtonClose.TextSize = 18.000
	TextButtonClose.TextWrapped = true
	TextButtonClose.MouseButton1Click:Connect(function()
		main:Play()
		tween:Create(FrameMain,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 0, 0, 0)}):Play()
		wait(.5)
		FrameMain:Destroy()
	end)
	TextButtonClose.MouseLeave:Connect(function()
		tween:Create(TextButtonClose,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(106,106,106)}):Play()
	end)
	TextButtonClose.MouseEnter:Connect(function()
		tween:Create(TextButtonClose,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextColor3 = Color3.fromRGB(255,255,255)}):Play()
	end)

	local tabs = {}
	-- Tabs
	function tabs.tab(input, visible)
		local debounce = false

		local TextButton = Instance.new("TextButton")
		local UICorner_3 = Instance.new("UICorner")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		local Frame = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")

		TextButton.Name = "[TextButton/"..input.."]"
		TextButton.Parent = FrameTabs
		TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.475206614, 0, 0.0562700965, 0)
		TextButton.Size = UDim2.new(0, 115, 0, 35)
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.Gotham
		TextButton.Text = input
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 15.000

		TextButton.MouseEnter:Connect(function()
			tween:Create(TextButton,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(30,30,30)}):Play()
		end)
		TextButton.MouseButton1Click:Connect(function()
			click:Play()
			if not debounce then
				debounce = true
				tween:Create(TextButton,TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0),{BackgroundColor3 = Color3.fromRGB(50,50,50)}):Play()
				TextButton.TextSize = 21
				tween:Create(TextButton,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextSize = 16}):Play()
				wait(.2)
				debounce = false
			end
		end)
		TextButton.MouseLeave:Connect(function()
			tween:Create(TextButton,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
		end)

		UICorner_3.CornerRadius = UDim.new(0, 3)
		UICorner_3.Name = "[UICorner]"
		UICorner_3.Parent = TextButton

		ScrollingFrame.Name = "[ScrollingFrame/"..input.."]"
		ScrollingFrame.Parent = FolderContainers
		ScrollingFrame.Active = true
		ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Position = UDim2.new(0.638888896, 0, 0.551071405, 0)
		ScrollingFrame.Size = UDim2.new(0, 325, 0, 313)
		ScrollingFrame.ScrollBarThickness = 0
		ScrollingFrame.Visible = visible

		Frame.Name = "[Frame]"
		Frame.Parent = TextButton
		Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0, 0, 0.921052754, 0)
		Frame.Size = UDim2.new(0, 115, 0, 2)

		UICorner.CornerRadius = UDim.new(0, 100)
		UICorner.Name = "[UICorner]"
		UICorner.Parent = Frame

		UIPadding.Name = "[UIPadding]"
		UIPadding.Parent = ScrollingFrame
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 4)

		UIListLayout.Name = "[UIListLayout]"
		UIListLayout.Parent = ScrollingFrame
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)
		ScrollingFrame.CanvasSize = UDim2.new(0.15, 0.15, 0.15, UIListLayout.AbsoluteContentSize.Y)
		ScrollingFrame.ChildAdded:Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0.15, 0.15, 0.15, UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset)
		end)

		function tab()
			for int, value in pairs(FolderContainers:GetChildren()) do
				value.Visible = false
			end
			ScrollingFrame.Visible = true
		end

		TextButton.MouseButton1Click:Connect(tab)

		-- Sections
		local sections = {}

		function sections.section(input)
			local Section = Instance.new("TextLabel")

			Section.Name = "[Section/"..input.."]"
			Section.Parent = ScrollingFrame
			Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Section.BackgroundTransparency = 1.000
			Section.BorderSizePixel = 0
			Section.Position = UDim2.new(0, 0, 4.9381196e-08, 0)
			Section.Size = UDim2.new(0, 314, 0, 15)
			Section.Font = Enum.Font.Gotham
			Section.Text = input
			Section.TextColor3 = Color3.fromRGB(255, 255, 255)
			Section.TextSize = 16.000
			Section.TextXAlignment = Enum.TextXAlignment.Left

			-- The functions etc.
			local library = {}
			-- button
			function library.button(input, callback)
				function puurs() function callback() end end
				local debounce = false

				local TextButton = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local Frame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")

				TextButton.Name = "[TextButton]"
				TextButton.Parent = ScrollingFrame
				TextButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextButton.Position = UDim2.new(0, 0, 0.0841424465, 0)
				TextButton.Size = UDim2.new(0, 314, 0, 38)
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = ""
				TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.TextSize = 14.000
				TextButton.MouseButton1Click:Connect(function()
					pcall(callback)
					click:Play()
					if not debounce then
						debounce = true
						tween:Create(TextButton,TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0),{BackgroundColor3 = Color3.fromRGB(50,50,50)}):Play()
						TextLabel.TextSize = 19
						tween:Create(TextLabel,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextSize = 16}):Play()
						wait(.2)
						debounce = false
					end
				end)

				TextButton.MouseEnter:Connect(function()
					tween:Create(TextButton,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
				end)
				TextButton.MouseLeave:Connect(function()
					tween:Create(TextButton,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
				end)

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Name = "[UICorner]"
				UICorner.Parent = TextButton

				TextLabel.Name = "[TextLabel]"
				TextLabel.Parent = TextButton
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0286624208, 0, 0.342105269, 0)
				TextLabel.Size = UDim2.new(0, 63, 0, 11)
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.Text = input
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 16.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				Frame.Name = "[Frame]"
				Frame.Parent = TextButton
				Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0, 0, 0.925894916, 0)
				Frame.Size = UDim2.new(0, 314, 0, 2)

				UICorner_2.CornerRadius = UDim.new(0, 100)
				UICorner_2.Name = "[UICorner]"
				UICorner_2.Parent = Frame
			end
			function library.toggle(input, callback)
				function puurs() function callback() end end
				local debounce = false;local toggle = false

				local TextToggle = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local FrameLinear = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Frame = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local TextLabel_2 = Instance.new("TextLabel")
				local UICorner_4 = Instance.new("UICorner")


				TextToggle.Name = "[TextToggle]"
				TextToggle.Parent = ScrollingFrame
				TextToggle.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextToggle.Position = UDim2.new(0, 0, 0.0841424465, 0)
				TextToggle.Size = UDim2.new(0, 314, 0, 38)
				TextToggle.AutoButtonColor = false
				TextToggle.Font = Enum.Font.SourceSans
				TextToggle.Text = ""
				TextToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextToggle.TextSize = 14.000

				TextToggle.MouseEnter:Connect(function()
					tween:Create(TextToggle,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
				end)
				TextToggle.MouseLeave:Connect(function()
					tween:Create(TextToggle,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
				end)

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Name = "[UICorner]"
				UICorner.Parent = TextToggle

				TextLabel.Name = "[TextLabel/"..input.."]"
				TextLabel.Parent = TextToggle
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0286624208, 0, 0.342105269, 0)
				TextLabel.Size = UDim2.new(0, 63, 0, 11)
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.Text = input
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 16.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				FrameLinear.Name = "[Frame/Linear]"
				FrameLinear.Parent = TextToggle
				FrameLinear.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				FrameLinear.BorderSizePixel = 0
				FrameLinear.Position = UDim2.new(0, 0, 0.925894916, 0)
				FrameLinear.Size = UDim2.new(0, 314, 0, 2)

				UICorner_2.CornerRadius = UDim.new(0, 100)
				UICorner_2.Name = "[UICorner]"
				UICorner_2.Parent = FrameLinear

				Frame.Name = "[Frame]"
				Frame.Parent = TextToggle
				Frame.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				Frame.Position = UDim2.new(0.92662096, 0, 0.46536845, 0)
				Frame.Size = UDim2.new(0, 32, 0, 27)

				UICorner_3.CornerRadius = UDim.new(0, 4)
				UICorner_3.Name = "[UICorner]"
				UICorner_3.Parent = Frame

				TextLabel_2.Name = "[TextLabel/"..input.."]"
				TextLabel_2.Parent = Frame
				TextLabel_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				TextLabel_2.Position = UDim2.new(0.051, 0,0.072, 0)
				TextLabel_2.Size = UDim2.new(0, 28,0, 23)
				TextLabel_2.Font = Enum.Font.Gotham
				TextLabel_2.Text = ""
				TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_2.TextSize = 20.000

				UICorner_4.CornerRadius = UDim.new(0, 4)
				UICorner_4.Name = "[UICorner]"
				UICorner_4.Parent = TextLabel_2

				TextToggle.MouseButton1Click:Connect(function()
					toggle = not toggle
					pcall(callback, toggle)
					click:Play()
					TextLabel_2.Text = toggle and utf8.char(1003) or ""
					TextLabel_2.TextSize = 10
					tween:Create(TextLabel_2,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextSize = 20}):Play()
					if not debounce then
						debounce = true
						tween:Create(TextToggle,TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true, 0),{BackgroundColor3 = Color3.fromRGB(50,50,50)}):Play()
						TextLabel.TextSize = 19
						tween:Create(TextLabel,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{TextSize = 16}):Play()
						tween:Create(TextLabel_2,TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(33,33,33)}):Play()
						tween:Create(Frame,TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
						wait(.2)
						debounce = false
					end
					tween:Create(TextLabel_2,TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(45,45,45)}):Play()
					tween:Create(Frame,TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(34, 34, 34)}):Play()
				end)
			end

			function library.textbox(input, types, callback)
				function puurs() function callback() end end

				local TextBox = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local FrameLinear = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Frame = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local TextBox_2 = Instance.new("TextBox")
				local UICorner_4 = Instance.new("UICorner")
				
				TextBox.Name = "[TextBox/"..input.."]"
				TextBox.Parent = ScrollingFrame
				TextBox.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextBox.Position = UDim2.new(0, 0, 0.0841424465, 0)
				TextBox.Size = UDim2.new(0, 314, 0, 38)
				TextBox.AutoButtonColor = false
				TextBox.Font = Enum.Font.SourceSans
				TextBox.Text = ""
				TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.TextSize = 14.000

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Name = "[UICorner]"
				UICorner.Parent = TextBox

				TextLabel.Name = "[TextLabel/"..input.."]"
				TextLabel.Parent = TextBox
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0286624208, 0, 0.342105269, 0)
				TextLabel.Size = UDim2.new(0, 63, 0, 11)
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.Text = input
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 16.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				FrameLinear.Name = "[Frame/Linear]"
				FrameLinear.Parent = TextBox
				FrameLinear.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				FrameLinear.BorderSizePixel = 0
				FrameLinear.Position = UDim2.new(0, 0, 0.925894916, 0)
				FrameLinear.Size = UDim2.new(0, 314, 0, 2)

				UICorner_2.CornerRadius = UDim.new(0, 100)
				UICorner_2.Name = "[UICorner]"
				UICorner_2.Parent = FrameLinear

				Frame.Name = "[Frame]"
				Frame.Parent = TextBox
				Frame.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				Frame.Position = UDim2.new(0.792863011, 0, 0.465368181, 0)
				Frame.Size = UDim2.new(0, 116, 0, 27)

				UICorner_3.CornerRadius = UDim.new(0, 4)
				UICorner_3.Name = "[UICorner]"
				UICorner_3.Parent = Frame

				TextBox_2.Name = "[TextBox/"..input.."]"
				TextBox_2.Parent = Frame
				TextBox_2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
				TextBox_2.ClipsDescendants = true
				TextBox_2.Position = UDim2.new(0.0172413811, 0, 0.0720000118, 0)
				TextBox_2.Size = UDim2.new(0, 112, 0, 23)
				TextBox_2.Font = Enum.Font.Gotham
				TextBox_2.PlaceholderText = "Input"
				TextBox_2.Text = ""
				TextBox_2.TextColor3 = Color3.fromRGB(235, 235, 235)
				TextBox_2.TextSize = 16.000

				UICorner_4.CornerRadius = UDim.new(0, 4)
				UICorner_4.Name = "[UICorner]"
				UICorner_4.Parent = TextBox_2

				TextBox.MouseEnter:Connect(function()
					tween:Create(TextBox,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
				end)
				TextBox.MouseLeave:Connect(function()
					tween:Create(TextBox,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
				end)

				TextBox_2.Focused:Connect(function()
					click:Play()
					tween:Create(Frame,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(28,28,28)}):Play()
				end)

				TextBox_2.FocusLost:Connect(function(enter)
					tween:Create(Frame,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
					if enter then
						pcall(callback, TextBox_2.Text)
						if types then
							TextBox_2.Text = ""
						end
					end
				end)
				TextBox_2.FocusLost:Connect(function()
					enter:Play()
				end)
			end

			-- Keybinds
			function library.keybind(input, box, callback)
				function puurs() function callback() end end
				local capital = string.upper(box)
				
				local TextKeybind = Instance.new("TextButton")
				local UICorner = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local Frame_2 = Instance.new("Frame")
				local UICorner_4 = Instance.new("UICorner")
				local Frame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local TextLabel_1 = Instance.new("TextLabel")
				local UICorner_3 = Instance.new("UICorner")

				TextKeybind.Name = "[TextKeybind/"..input.."]"
				TextKeybind.Parent = ScrollingFrame
				TextKeybind.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				TextKeybind.Position = UDim2.new(0, 0, 0.0841424465, 0)
				TextKeybind.Size = UDim2.new(0, 314, 0, 38)
				TextKeybind.AutoButtonColor = false
				TextKeybind.Font = Enum.Font.SourceSans
				TextKeybind.Text = ""
				TextKeybind.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextKeybind.TextSize = 14.000

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Name = "[UICorner]"
				UICorner.Parent = TextKeybind

				TextLabel.Name = "[TextLabel/"..input.."]"
				TextLabel.Parent = TextKeybind
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0286624208, 0, 0.342105269, 0)
				TextLabel.Size = UDim2.new(0, 63, 0, 11)
				TextLabel.Font = Enum.Font.Gotham
				TextLabel.Text = input
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 16.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				Frame.Name = "[Frame/"..input.."]"
				Frame.Parent = TextKeybind
				Frame.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(33,33,33)
				Frame.Position = UDim2.new(0.92662096, 0, 0.46536845, 0)
				Frame.Size = UDim2.new(0, 32, 0, 27)

				UICorner_2.CornerRadius = UDim.new(0, 4)
				UICorner_2.Name = "[UICorner]"
				UICorner_2.Parent = Frame

				TextLabel_1.Name = "[TextLabel/"..input.."]"
				TextLabel_1.Parent = Frame
				TextLabel_1.BackgroundColor3 = Color3.fromRGB(50,50,50)
				TextLabel_1.Position = UDim2.new(0.0512504578, 0, 0.0720000118, 0)
				TextLabel_1.Size = UDim2.new(0, 28, 0, 23)
				TextLabel_1.Font = Enum.Font.Gotham
				TextLabel_1.Text = capital
				TextLabel_1.TextColor3 = Color3.fromRGB(235, 235, 235)
				TextLabel_1.TextSize = 20

				UICorner_3.CornerRadius = UDim.new(0, 4)
				UICorner_3.Name = "[UICorner]"
				UICorner_3.Parent = TextLabel_1

				Frame_2.Name = "[Frame/"..input.."]"
				Frame_2.Parent = TextKeybind
				Frame_2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				Frame_2.BorderSizePixel = 0
				Frame_2.Position = UDim2.new(0, 0, 0.921052635, 0)
				Frame_2.Size = UDim2.new(0, 314,0, 2)

				UICorner_4.CornerRadius = UDim.new(0, 100)
				UICorner_4.Name = "[UICorner]"
				UICorner_4.Parent = Frame_2

				TextKeybind.MouseEnter:Connect(function()
					tween:Create(TextKeybind,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
				end)
				TextKeybind.MouseLeave:Connect(function()
					tween:Create(TextKeybind,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
				end)

				function keybind(input)
					if input == box then
						pcall(callback)
					end
				end
				mouse.KeyDown:Connect(keybind)
			end
			return library
		end
		return sections
	end
	return tabs
end
return puurs
