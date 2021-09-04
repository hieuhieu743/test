-- Gui to Lua
-- Version: 3.2

local library = {}

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local UserId = LocalPlayer.UserId

function UpdateSizeTab()

end

function UpdateSizeSection()

end

function library:Window(title)
	local window = {}
	title = title or "Window"
	
	local CFAUiLib = Instance.new("ScreenGui")
	local Container = Instance.new("Frame")
	local TitleFrame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local ImageButton = Instance.new("ImageButton")
	local Tabs = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
    local Section = Instance.new("ScrollingFrame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local Frame = Instance.new("Frame")
	
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
    Container.ClipsDescendants = true

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
	TextLabel.Text = "CFA Hub Premium - "..title
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
	ImageButton.Image = "rbxassetid://6035067836"
	
	Tabs.Name = "Tabs"
	Tabs.Parent = Frame
	Tabs.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Tabs.BorderSizePixel = 0
	Tabs.Position = UDim2.new(0, 0, 0.0776699036, 0)
	Tabs.Size = UDim2.new(0, 131, 0, 284)
	Tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
	Tabs.ScrollBarThickness = 6
	
	UIListLayout.Parent = Tabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 2)

    Section.Name = "Section"
    Section.Parent = Frame
    Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Section.BackgroundTransparency = 1.000
    Section.BorderSizePixel = 0
    Section.Position = UDim2.new(0.2249538, 0, 0.097942017, 0)
    Section.Size = UDim2.new(0, 449, 0, 277)
    Section.ScrollBarThickness = 6

    UIListLayout_2.Parent = Section
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 4)

    Frame.Parent = Container
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.ClipsDescendants = true
	
    ImageButton.MouseButton1Click(function()
        local toggled = false
        if toggled then
            toggled = false
            Container:TweenSize(UDim2.new(0, 0, 0, 24), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.3)
        else
            toggled = true
            Container:TweenSize(UDim2.new(0, 0, 0, 309), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.3)
        end
    end)

	function window:Destroy()
		LocalPlayer:WaitForChild("PlayerGui")["Window"]:Destroy()
	end
	
	function window:NewTab(text)
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
	end

    function window:MakeSilder(text, min, max, callback)
        text = text or "Silder"
        min = min or 1
        max = max or 100
        callback = callback or function() end
        
        local SilderContainer = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Name = Instance.new("TextLabel")
        local BarFrame = Instance.new("Frame")
        local Bar = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local UICorner_4 = Instance.new("UICorner")
        local Icon = Instance.new("ImageLabel")
        
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
        Name.Size = UDim2.new(0, 137, 0, 34)
        Name.Font = Enum.Font.SourceSansBold
        Name.LineHeight = 1.130
        Name.Text = text
        Name.TextColor3 = Color3.fromRGB(255, 255, 255)
        Name.TextScaled = true
        Name.TextSize = 14.000
        Name.TextWrapped = true
        Name.TextXAlignment = Enum.TextXAlignment.Left

        BarFrame.Name = "BarFrame"
        BarFrame.Parent = SilderContainer
        BarFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
        BarFrame.Position = UDim2.new(0.450839341, 0, 0.34343943, 0)
        BarFrame.Size = UDim2.new(0, 219, 0, 9)

        Bar.Name = "Bar"
        Bar.Parent = BarFrame
        Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Bar.Position = UDim2.new(0.00684945425, 0, 0.00710381381, 0)
        Bar.Size = UDim2.new(0, 172, 0, 9)

        UICorner_3.Parent = Bar

        UICorner_4.Parent = BarFrame

        Icon.Name = "Icon"
        Icon.Parent = SilderContainer
        Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Icon.BackgroundTransparency = 1.000
        Icon.Position = UDim2.new(0.0263788961, 0, -0.0294117648, 0)
        Icon.Size = UDim2.new(0, 34, 0, 34)
        Icon.Image = "http://www.roblox.com/asset/?id=7399449796"
    end

    function window:MakeButton(text, callback)
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
    end

    function window:MakeToggle(text, callback)
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
        Name_3.Text = "Toggle"
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

    function window:MakeDropdown(text, options, callback)
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
	
	CFAUiLib.Parent = CoreGui
	return window
end

return library