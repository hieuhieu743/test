-- Gui to Lua
-- Version: 3.2

local library = {}

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local UserId = LocalPlayer.UserId
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

function library:Window(gameName)
	local window = {}
	gameName = gameName or "Window"
	
	local CFAUiLib = Instance.new("ScreenGui")
	local Container = Instance.new("Frame")
	local TitleFrame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local ImageButton = Instance.new("ImageButton")
	local Tabs = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	
	CFAUiLib.Name = "Window"
	CFAUiLib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	CFAUiLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Container.Name = "Container"
	Container.Parent = CFAUiLib
	Container.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Container.BorderColor3 = Color3.fromRGB(31, 31, 31)
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0.011299435, 0, 0.0360531397, 0)
	Container.Size = UDim2.new(0, 580, 0, 309)

	TitleFrame.Name = "TitleFrame"
	TitleFrame.Parent = Container
	TitleFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	TitleFrame.BorderSizePixel = 0
	TitleFrame.Size = UDim2.new(1, 0, 0, 24)

	TextLabel.Parent = TitleFrame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0764587522, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 318, 0, 24)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.LineHeight = 1.150
	TextLabel.Text = "CFA Hub Premium - "..gameName
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	ImageLabel.Parent = TitleFrame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.0160965789, 0, 0, 0)
	ImageLabel.Size = UDim2.new(0, 24, 0, 24)
	ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	ImageButton.Parent = TitleFrame
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.Position = UDim2.new(0.925999999, 0, 0, 0)
	ImageButton.Size = UDim2.new(0, 24, 0, 24)
	ImageButton.Image = "rbxassetid://3926305904"

    ImageButton.MouseButton1Click:Connect(function()
        game.TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ImageTransparency = 1
        }):Play()
        wait()
        game.TweenService:Create(Container, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0,0,0,0),
			Position = UDim2.new(0, Container.AbsolutePosition.X + (Container.AbsoluteSize.X / 2), 0, Container.AbsolutePosition.Y + (Container.AbsoluteSize.Y / 2))
		}):Play()
        wait(1)
        CFAUiLib:Destroy()
    end)
	
	Tabs.Name = "Tabs"
	Tabs.Parent = Container
	Tabs.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(0, 0, 0.0776699036, 0)
	Tabs.Size = UDim2.new(0, 131, 0, 284)
	Tabs.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)
	Tabs.ScrollBarThickness = 6
	
	UIListLayout.Parent = Tabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 2)

	function window:Destroy()
		LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Window"):Destroy()
        CoreGui:WaitForChild("Window"):Destroy()
	end
	
	function window:NewTab(text)
        local tabs = {}
		text = text or "Tab"
		
		local ButtonContainer = Instance.new("Frame")
		local Button = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		
		ButtonContainer.Name = "ButtonContainer"
		ButtonContainer.Parent = Tabs
		ButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonContainer.BackgroundTransparency = 1.000
		ButtonContainer.Position = UDim2.new(0, 0, 0.0237180144, 0)
		ButtonContainer.Size = UDim2.new(0, 131, 0, 41)
		
		Button.Name = "Button"
		Button.Parent = ButtonContainer
		Button.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		Button.BorderColor3 = Color3.fromRGB(31, 31, 31)
		Button.BorderSizePixel = 2
		Button.Position = UDim2.new(0.0534351133, 0, 0.144438028, 0)
		Button.Size = UDim2.new(0.893129766, 0, 0.855561972, 0)
		Button.Font = Enum.Font.SourceSansBold
		Button.Text = text
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextSize = 22.000
		Button.TextWrapped = true

		UICorner.Parent = Button

        return tabs
	end

    function window:NewSection(text)
        local sections = {}
        text = text or "Section"

        local Section = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        Section.Name = "Section"
        Section.Parent = Container
        Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Section.BackgroundTransparency = 1.000
        Section.BorderSizePixel = 0
        Section.Position = UDim2.new(0.2249538, 0, 0.097942017, 0)
        Section.Size = UDim2.new(0, 449, 0, 277)
        Section.CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y)
        Section.ScrollBarThickness = 6

        UIListLayout_2.Parent = Section
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 4)

        function sections:MakeSilder(text, min, max, callback)
            text = text or "Silder"
            min = min or 1
            max = max or 100
            callback = callback or function() end
            local Value
            local moveconnection
            local releaseconnection
            
            local SilderContainer = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local Name = Instance.new("TextLabel")
            local Icon = Instance.new("ImageLabel")
            local Number = Instance.new("TextLabel")
            local SilderButton = Instance.new("TextButton")
            local Bar = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            
            SilderContainer.Name = "SilderContainer"
            SilderContainer.Parent = Section
            SilderContainer.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            SilderContainer.Position = UDim2.new(-0.000422947109, 0, 1.16666663, 0)
            SilderContainer.Size = UDim2.new(0, 417, 0, 34)
            
            UICorner_2.Parent = SilderContainer
            
            Name.Name = "Name"
            Name.Parent = SilderContainer
            Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Name.BackgroundTransparency = 1.000
            Name.Position = UDim2.new(0.12230216, 0, 0, 0)
            Name.Size = UDim2.new(0, 96, 0, 34)
            Name.Font = Enum.Font.SourceSansBold
            Name.LineHeight = 1.130
            Name.Text = text
            Name.TextColor3 = Color3.fromRGB(255, 255, 255)
            Name.TextScaled = true
            Name.TextSize = 14.000
            Name.TextWrapped = true
            Name.TextXAlignment = Enum.TextXAlignment.Left
            
            Icon.Name = "Icon"
            Icon.Parent = SilderContainer
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.Position = UDim2.new(0.0263788961, 0, -0.0294117648, 0)
            Icon.Size = UDim2.new(0, 34, 0, 34)
            Icon.Image = "http://www.roblox.com/asset/?id=7399449796"
            
            Number.Name = "Number"
            Number.Parent = SilderContainer
            Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Number.BackgroundTransparency = 1.000
            Number.Position = UDim2.new(0.352517992, 0, 0, 0)
            Number.Size = UDim2.new(0, 41, 0, 34)
            Number.Font = Enum.Font.SourceSansBold
            Number.LineHeight = 1.130
            Number.Text = "0"
            Number.TextColor3 = Color3.fromRGB(255, 255, 255)
            Number.TextScaled = true
            Number.TextSize = 14.000
            Number.TextWrapped = true
            
            SilderButton.Name = "SilderButton"
            SilderButton.Parent = SilderContainer
            SilderButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
            SilderButton.Position = UDim2.new(0.455635488, 0, 0.323529422, 0)
            SilderButton.Size = UDim2.new(0, 217, 0, 9)
            SilderButton.AutoButtonColor = false
            SilderButton.Font = Enum.Font.SourceSans
            SilderButton.Text = ""
            SilderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SilderButton.TextSize = 14.000
            
            Bar.Name = "Bar"
            Bar.Parent = SilderButton
            Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Bar.Position = UDim2.new(-0.00921658985, 0, 0.00710381381, 0)
            Bar.Size = UDim2.new(0.00899999961, 0, 0, 9)
            
            UICorner_3.Parent = Bar
            
            UICorner_4.Parent = SilderButton

            SilderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(max) - tonumber(min)) / 217) * Bar.AbsoluteSize.X) + tonumber(min)) or 0
                pcall(function()
                    callback(Value)
                end)
                Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 217), 0, 9)
                moveconnection = mouse.Move:Connect(function()
                    Number.Text = Value
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 217) * Bar.AbsoluteSize.X) + tonumber(min))
                    pcall(function()
                        callback(Value)
                        Number.Text = Value
                    end)
                    Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 217), 0, 9)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 217) * Bar.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 217), 0, 9)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end
    
        function sections:MakeButton(text, callback)
            text = text or "Button"
            callback = callback or function() end
    
            local ButtonContainer_2 = Instance.new("Frame")
            local Button_2 = Instance.new("TextButton")
            local UICorner_5 = Instance.new("UICorner")
            local Icon_2 = Instance.new("ImageLabel")
            local Name_2 = Instance.new("TextLabel")
    
            ButtonContainer_2.Name = "ButtonContainer"
            ButtonContainer_2.Parent = Section
            ButtonContainer_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            ButtonContainer_2.BackgroundTransparency = 1.000
            ButtonContainer_2.Position = UDim2.new(-0.000422947109, 0, 1.16666663, 0)
            ButtonContainer_2.Size = UDim2.new(0, 417, 0, 34)
            
            Button_2.Name = "Button"
            Button_2.Parent = ButtonContainer_2
            Button_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            Button_2.Size = UDim2.new(0, 417, 0, 34)
            Button_2.Font = Enum.Font.SourceSans
            Button_2.Text = ""
            Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button_2.TextScaled = true
            Button_2.TextSize = 14.000
            Button_2.TextWrapped = true
            
            UICorner_5.Parent = Button_2
            
            Icon_2.Name = "Icon"
            Icon_2.Parent = Button_2
            Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon_2.BackgroundTransparency = 1.000
            Icon_2.Position = UDim2.new(0.0263788961, 0, -0.0294117648, 0)
            Icon_2.Size = UDim2.new(0, 34, 0, 34)
            Icon_2.Image = "http://www.roblox.com/asset/?id=7399449509"
            
            Name_2.Name = "Name"
            Name_2.Parent = Button_2
            Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Name_2.BackgroundTransparency = 1.000
            Name_2.Position = UDim2.new(0.12230216, 0, 0, 0)
            Name_2.Size = UDim2.new(0, 137, 0, 34)
            Name_2.Font = Enum.Font.SourceSansBold
            Name_2.LineHeight = 1.130
            Name_2.Text = text
            Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Name_2.TextScaled = true
            Name_2.TextSize = 14.000
            Name_2.TextWrapped = true
            Name_2.TextXAlignment = Enum.TextXAlignment.Left

            Button_2.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
        end
    
        function sections:MakeToggle(text, callback)
            text = text or "Toggle"
            callback = callback or function() end
            
            local ToggleContainer = Instance.new("Frame")
            local Button_3 = Instance.new("TextButton")
            local UICorner_6 = Instance.new("UICorner")
            local Name_3 = Instance.new("TextLabel")
            local Off = Instance.new("ImageLabel")
            local On = Instance.new("ImageLabel")
    
            ToggleContainer.Name = "ToggleContainer"
            ToggleContainer.Parent = Section
            ToggleContainer.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            ToggleContainer.BackgroundTransparency = 1.000
            ToggleContainer.Position = UDim2.new(-0.000422947109, 0, 1.16666663, 0)
            ToggleContainer.Size = UDim2.new(0, 417, 0, 34)
            
            Button_3.Name = "Button"
            Button_3.Parent = ToggleContainer
            Button_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            Button_3.Size = UDim2.new(0, 417, 0, 34)
            Button_3.Font = Enum.Font.SourceSans
            Button_3.Text = ""
            Button_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button_3.TextScaled = true
            Button_3.TextSize = 14.000
            Button_3.TextWrapped = true
            
            UICorner_6.Parent = Button_3
            
            Name_3.Name = "Name"
            Name_3.Parent = Button_3
            Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Name_3.BackgroundTransparency = 1.000
            Name_3.Position = UDim2.new(0.12230216, 0, 0, 0)
            Name_3.Size = UDim2.new(0, 137, 0, 34)
            Name_3.Font = Enum.Font.SourceSansBold
            Name_3.LineHeight = 1.130
            Name_3.Text = text
            Name_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Name_3.TextScaled = true
            Name_3.TextSize = 14.000
            Name_3.TextWrapped = true
            Name_3.TextXAlignment = Enum.TextXAlignment.Left
            
            On.Name = "On"
            On.Parent = Button_3
            On.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            On.BackgroundTransparency = 1.000
            On.Position = UDim2.new(0.0263788961, 0, -0.0294117648, 0)
            On.Size = UDim2.new(0, 34, 0, 34)
            On.Visible = false
            On.Image = "http://www.roblox.com/asset/?id=7399450545"
            
            Off.Name = "Off"
            Off.Parent = Button_3
            Off.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Off.BackgroundTransparency = 1.000
            Off.Position = UDim2.new(0.0263788961, 0, -0.0294117648, 0)
            Off.Size = UDim2.new(0, 34, 0, 34)
            Off.Image = "http://www.roblox.com/asset/?id=7399450227"
    
            Button_3.MouseButton1Click:Connect(function()
                if Off.Visible == true then
                    Off.Visible = false
                    On.Visible = true
                    pcall(callback)
                else
                    Off.Visible = true
                    On.Visible = false
                end
            end)
        end
    
        function sections:MakeDropdown(text, options, callback)
            text = text or "Dropdown"
            callback = callback or function() end
            
            local DropdownContainer = Instance.new("Frame")
            local Button_4 = Instance.new("TextButton")
            local UICorner_7 = Instance.new("UICorner")
            local Icon_3 = Instance.new("ImageLabel")
            local Name_4 = Instance.new("TextLabel")
    
            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = Section
            DropdownContainer.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownContainer.BackgroundTransparency = 1.000
            DropdownContainer.Position = UDim2.new(-0.000422947109, 0, 1.16666663, 0)
            DropdownContainer.Size = UDim2.new(0, 417, 0, 34)
            
            Button_4.Name = "Button"
            Button_4.Parent = DropdownContainer
            Button_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            Button_4.Size = UDim2.new(0, 417, 0, 34)
            Button_4.Font = Enum.Font.SourceSans
            Button_4.Text = ""
            Button_4.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button_4.TextScaled = true
            Button_4.TextSize = 14.000
            Button_4.TextWrapped = true
            
            UICorner_7.Parent = Button_4
            
            Icon_3.Name = "Icon"
            Icon_3.Parent = Button_4
            Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon_3.BackgroundTransparency = 1.000
            Icon_3.Position = UDim2.new(0.0263788961, 0, -0.0294117648, 0)
            Icon_3.Size = UDim2.new(0, 34, 0, 34)
            Icon_3.Image = "http://www.roblox.com/asset/?id=7399527219"
            
            Name_4.Name = "Name"
            Name_4.Parent = Button_4
            Name_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Name_4.BackgroundTransparency = 1.000
            Name_4.Position = UDim2.new(0.12230216, 0, 0, 0)
            Name_4.Size = UDim2.new(0, 137, 0, 34)
            Name_4.Font = Enum.Font.SourceSansBold
            Name_4.LineHeight = 1.130
            Name_4.Text = text
            Name_4.TextColor3 = Color3.fromRGB(255, 255, 255)
            Name_4.TextScaled = true
            Name_4.TextSize = 14.000
            Name_4.TextWrapped = true
            Name_4.TextXAlignment = Enum.TextXAlignment.Left
        end

        return sections
    end
	
	CFAUiLib.Parent = CoreGui
	return window
end

return library