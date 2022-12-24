

function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
LocalScript2 = Instance.new("LocalScript")
Frame3 = Instance.new("Frame")
TextButton4 = Instance.new("TextButton")
LocalScript5 = Instance.new("LocalScript")
TextButton6 = Instance.new("TextButton")
LocalScript7 = Instance.new("LocalScript")
TextButton8 = Instance.new("TextButton")
LocalScript9 = Instance.new("LocalScript")
TextButton10 = Instance.new("TextButton")
LocalScript11 = Instance.new("LocalScript")
TextButton12 = Instance.new("TextButton")
LocalScript13 = Instance.new("LocalScript")
ScreenGui0.Name = "LankyboxGUI"
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.324208707, 0, 0.35213995, 0)
Frame1.Size = UDim2.new(0, 425, 0, 251)
Frame1.AutoLocalize = false
Frame1.Localize = false
Frame1.BackgroundColor = BrickColor.new("Institutional white")
Frame1.BackgroundColor3 = Color3.new(1, 1, 1)
Frame1.BorderSizePixel = 0
Frame1.LayoutOrder = -1
Frame1.ZIndex = -123123
Frame1.Style = Enum.FrameStyle.DropShadow
LocalScript2.Name = "Dragify"
LocalScript2.Parent = Frame1
table.insert(cors,sandbox(LocalScript2,function()
local UIS = game:GetService("UserInputService")
function dragify(Frame)
    dragToggle = nil
    local dragSpeed = 0.50
    dragInput = nil
    dragStart = nil
    local dragPos = nil
    function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

dragify(script.Parent)
end))
Frame3.Parent = Frame1
Frame3.Position = UDim2.new(0.00537759066, 0, 0.00766345486, 0)
Frame3.Size = UDim2.new(0, 404, 0, 232)
Frame3.BackgroundColor = BrickColor.new("Institutional white")
Frame3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame3.BorderSizePixel = 0
Frame3.ZIndex = -123
Frame3.Style = Enum.FrameStyle.ChatRed
TextButton4.Name = "GetRainbowLuckyBlock"
TextButton4.Parent = Frame3
TextButton4.Size = UDim2.new(0, 200, 0, 50)
TextButton4.BackgroundColor = BrickColor.new("Institutional white")
TextButton4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton4.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton4.Font = Enum.Font.Gotham
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.Text = "Get Rainbow Luckyblock"
TextButton4.TextColor = BrickColor.new("Really black")
TextButton4.TextColor3 = Color3.new(0, 0, 0)
TextButton4.TextScaled = true
TextButton4.TextSize = 14
TextButton4.TextWrap = true
TextButton4.TextWrapped = true
LocalScript5.Name = "Reinbow"
LocalScript5.Parent = TextButton4
table.insert(cors,sandbox(LocalScript5,function()
function onclick()
	game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end

script.Parent.MouseButton1Click:connect(onclick)
end))
TextButton6.Name = "GetDiamondLuckyBlock"
TextButton6.Parent = Frame3
TextButton6.Position = UDim2.new(0.00212597102, 0, 0.301298171, 0)
TextButton6.Size = UDim2.new(0, 200, 0, 50)
TextButton6.BackgroundColor = BrickColor.new("Institutional white")
TextButton6.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton6.LayoutOrder = 123
TextButton6.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton6.Font = Enum.Font.Gotham
TextButton6.FontSize = Enum.FontSize.Size14
TextButton6.Text = "Get Galaxy Luckyblock"
TextButton6.TextColor = BrickColor.new("Really black")
TextButton6.TextColor3 = Color3.new(0, 0, 0)
TextButton6.TextScaled = true
TextButton6.TextSize = 14
TextButton6.TextWrap = true
TextButton6.TextWrapped = true
LocalScript7.Name = "Gelexy"
LocalScript7.Parent = TextButton6
table.insert(cors,sandbox(LocalScript7,function()
function onclick()
	game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end

script.Parent.MouseButton1Click:connect(onclick)
end))
TextButton8.Name = "Destroy GUI"
TextButton8.Parent = Frame3
TextButton8.Position = UDim2.new(0.026907742, 0, 0.643401325, 0)
TextButton8.Size = UDim2.new(0, 355, 0, 50)
TextButton8.BackgroundColor = BrickColor.new("Institutional white")
TextButton8.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton8.LayoutOrder = 123
TextButton8.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton8.Font = Enum.Font.Gotham
TextButton8.FontSize = Enum.FontSize.Size14
TextButton8.Text = "Destroy GUI"
TextButton8.TextColor = BrickColor.new("Really black")
TextButton8.TextColor3 = Color3.new(0, 0, 0)
TextButton8.TextScaled = true
TextButton8.TextSize = 14
TextButton8.TextWrap = true
TextButton8.TextWrapped = true
LocalScript9.Name = "DstryGUI"
LocalScript9.Parent = TextButton8
table.insert(cors,sandbox(LocalScript9,function()
local player = game.Players.LocalPlayer

function onclick()
	player.PlayerGui.LankyboxGUI.Frame:Destroy()
end

script.Parent.MouseButton1Click:connect(onclick)
end))
TextButton10.Name = "IY"
TextButton10.Parent = Frame3
TextButton10.Position = UDim2.new(0.564177811, 0, -0.00157363061, 0)
TextButton10.Size = UDim2.new(0, 172, 0, 50)
TextButton10.BackgroundColor = BrickColor.new("Institutional white")
TextButton10.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton10.LayoutOrder = 123
TextButton10.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton10.Font = Enum.Font.Gotham
TextButton10.FontSize = Enum.FontSize.Size14
TextButton10.Text = "Infinite Yield"
TextButton10.TextColor = BrickColor.new("Really black")
TextButton10.TextColor3 = Color3.new(0, 0, 0)
TextButton10.TextScaled = true
TextButton10.TextSize = 14
TextButton10.TextWrap = true
TextButton10.TextWrapped = true
LocalScript11.Name = "IY"
LocalScript11.Parent = TextButton10
table.insert(cors,sandbox(LocalScript11,function()
function onclick()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end

script.Parent.MouseButton1Click:connect(onclick)
end))
TextButton12.Name = "?"
TextButton12.Parent = Frame3
TextButton12.Position = UDim2.new(0.564177811, 0, 0.291529834, 0)
TextButton12.Size = UDim2.new(0, 172, 0, 50)
TextButton12.BackgroundColor = BrickColor.new("Institutional white")
TextButton12.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton12.LayoutOrder = 123
TextButton12.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton12.Font = Enum.Font.Gotham
TextButton12.FontSize = Enum.FontSize.Size14
TextButton12.Text = "?"
TextButton12.TextColor = BrickColor.new("Really black")
TextButton12.TextColor3 = Color3.new(0, 0, 0)
TextButton12.TextScaled = true
TextButton12.TextSize = 14
TextButton12.TextWrap = true
TextButton12.TextWrapped = true
LocalScript13.Name = "?"
LocalScript13.Parent = TextButton12
table.insert(cors,sandbox(LocalScript13,function()
function onclick()
	game.StarterGui:SetCore("SendNotification",{
		Title = "Welcome to my game hub!";
		Text = "A archive of all the games I have scripts for";
		Icon = "";
		Duration = 5;
	})
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/ValkopDev/GameHub/main/main.lua'),true))()
end

script.Parent.MouseButton1Click:connect(onclick)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
