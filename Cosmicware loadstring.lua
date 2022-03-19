

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Kinetic"))()

local Overrides = {
    Background = Color3.fromRGB(23, 30, 51),
    Section_Background = Color3.fromRGB(18, 23, 38),

    Dark_Borders = Color3.fromRGB(18, 23, 38),
    Light_Borders = Color3.fromRGB(255, 255, 255),

    Text_Color = Color3.fromRGB(235, 235, 235),

    Accent = Color3.fromRGB(255, 81, 0),
    Dark_Accent = Color3.fromRGB(140, 45, 0),
}

local Window = Library.NewWindow({
    Text = "CosmicWare",

    WindowSize = Vector2.new(550, 450),     -- Initial Size of the Window
    WindowPosition = Vector2.new(400, 200), -- Initial Position of the Window

    ThemeOverrides = Overrides,
    Scalable = true, -- Default : True
    
    -- WindowSizeCallback will fire everytime the user changes the size of the UI, 
    -- you can use this to save the size into a config system for example
    WindowSizeCallback = function(new)
        print("You changed the window size to: " .. new.X .. ", " .. new.Y)
    end,

    -- WindowPositionCallback will fire everytime the user moves/drags the UI to a new position, 
    -- you can use this to save the position into a config system for example
    WindowPositionCallback = function(new)
        print("You moved the window to: " .. new.X .. ", " .. new.Y)
    end,

    -- CloseCallback will fire when the user presses the close button on the UI (Top Right)
    CloseCallback = function()
        print("You closed the script !")
    end
})

local Page = Window.NewPage({Text = "Main"})

local Section = Page.NewSection({Text = "CosmicWare Main"})


local Toggle = Section.NewToggle({
    Text = "Dot lock (creds to jake and 6ex)",
    Callback = function(bool)
        print(value)loadstring(game:HttpGet("https://raw.githubusercontent.com/0nly6Ex/wfwf/main/aimbot", true))()
    end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Toggle = Section.NewToggle({
    Text = "Aimlock (rightclick) good ig",
    Callback = function(bool)
        print(value)-- // Dependencies
_G.PRED = 0.037
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShRikOuX/Da-Hood/main/Aiming.lua"))()
Aiming.TeamCheck(false)
Aiming.ShowFOV = true
Aiming.FOV = 70
-- // Services
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = true,
    AimLock = false,
    Prediction = 0.165,
    AimLockKeybind = Enum.KeyCode.E
}
getgenv().DaHoodSettings = DaHoodSettings

-- // Overwrite to account downed
function Aiming.Check()
    -- // Check A
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end

    -- // Check if downed
    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    -- // Check B
    if (KOd or Grabbed) then
        return false
    end

    -- //
    return true
end

-- // Hook
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Check if it trying to get our mouse's hit or target and see if we can use it
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        -- // Vars
        local SelectedPart = Aiming.SelectedPart

        -- // Hit/Target
        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            -- // Hit to account prediction
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            -- // Return modded val
            return (k == "Hit" and Hit or SelectedPart)
        end
    end

    -- // Return
    return __index(t, k)
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)

    if key == "v" then
        


        if Aiming.Enabled == false then
        
        Aiming.Enabled = true
        
        else
            
        Aiming.Enabled = false

        end

    end


end)


RunService.RenderStepped:Connect(function()

    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Value = tostring(ping)
    local pingValue = Value:split(" ")
    local PingNumber = pingValue[1]
    
    DaHoodSettings.Prediction = PingNumber / 1000 + _G.PRED
               if Aiming.Character ~= nil then
                    if Aiming.Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                    Aiming.TargetPart = "RightFoot"
                else
                    Aiming.Character:WaitForChild("Humanoid").StateChanged:Connect(function(new)
                    
                    if new == Enum.HumanoidStateType.Freefall then
                    Aiming.TargetPart = "RightFoot"
                    else
                    
                    Aiming.TargetPart = Aiming.SelectedPart
                    
                    end
                    
            
                    
                    end)
                    
                    end
            end

end)
    
    end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Toggle = Section.NewToggle({
    Text = "Silent aim (better Rev decient with db)",
    Callback = function(bool)
        print(value)-- // Dependencies
_G.PRED = 0.037
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShRikOuX/Da-Hood/main/Aiming.lua"))()
Aiming.TeamCheck(false)
Aiming.ShowFOV = true
Aiming.FOV = 70
-- // Services
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- // Vars
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = true,
    AimLock = false,
    Prediction = 0.165,
    AimLockKeybind = Enum.KeyCode.E
}
getgenv().DaHoodSettings = DaHoodSettings

-- // Overwrite to account downed
function Aiming.Check()
    -- // Check A
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end

    -- // Check if downed
    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    -- // Check B
    if (KOd or Grabbed) then
        return false
    end

    -- //
    return true
end

-- // Hook
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Check if it trying to get our mouse's hit or target and see if we can use it
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        -- // Vars
        local SelectedPart = Aiming.SelectedPart

        -- // Hit/Target
        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            -- // Hit to account prediction
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            -- // Return modded val
            return (k == "Hit" and Hit or SelectedPart)
        end
    end

    -- // Return
    return __index(t, k)
end)

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)

    if key == "v" then
        


        if Aiming.Enabled == false then
        
        Aiming.Enabled = true
        
        else
            
        Aiming.Enabled = false

        end

    end


end)


RunService.RenderStepped:Connect(function()

    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Value = tostring(ping)
    local pingValue = Value:split(" ")
    local PingNumber = pingValue[1]
    
    DaHoodSettings.Prediction = PingNumber / 1000 + _G.PRED
               if Aiming.Character ~= nil then
                    if Aiming.Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                    Aiming.TargetPart = "RightFoot"
                else
                    Aiming.Character:WaitForChild("Humanoid").StateChanged:Connect(function(new)
                    
                    if new == Enum.HumanoidStateType.Freefall then
                    Aiming.TargetPart = "RightFoot"
                    else
                    
                    Aiming.TargetPart = Aiming.SelectedPart
                    
                    end
                    
            
                    
                    end)
                    
                    end
            end

end)
    
    end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})



for i = 1, 2 do
    Window.NewNotification({
        Title = "Hello",
        Body = "Thanks For buying and using CosmicWare made by PAIN",
        Time = math.random(5, 20)
    })
    task.wait(0.2)
end

local Page = Window.NewPage({Text = "Miscs"})

local Section = Page.NewSection({Text = "Basic Miscs"})

local Toggle = Section.NewToggle({
    Text = "ChatLogs (GUI)",
    Callback = function(bool)
        print(value)loadstring(game:HttpGet("https://raw.githubusercontent.com/201122771/Mayhem/main/Chatlogger"))()
        
      end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})
wait(3)
local Toggle = Section.NewToggle({
    Text = "Fake Macro (might work)",
    Callback = function(bool)
        print(value)if Drawing then else return print("get a better executor lol") end
cred = Drawing.new("Text")
cred.Text = ("Fake Macro Speed Glitch Executed\nCreated by PAIN#5130 | dm if u have any problems\nMake sure to turn on Low GFX")
cred.Color = Color3.new(1, 1, 1)
cred.OutlineColor = Color3.new(0, 0, 0)
cred.Center = true
cred.Outline = true
cred.Position = Vector2.new(270, 100)
cred.Size = 20
cred.Font = Drawing.Fonts.Monospace
cred.Transparency = 0.9
wait(7)
cred:Remove()
game:GetService("UserInputService").InputBegan:Connect(function(input,chatting)
if input.UserInputType == Enum.UserInputType.Keyboard then
if chatting then IsChatting = true else IsChatting = false end
if input.KeyCode == Key then
	if IsChatting ~= false then return end
    if not toggle then
        toggle = true
    Instance.new("Animation", game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations")).Name = 'Greet'
        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet").AnimationId = 'rbxassetid://3189777795'
        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Play()
        wait(1.6)
        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
        wait()
    for i, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.Name ~= "Combat" or v.Name ~= "[Boombox]" then
            game:GetService("Players").LocalPlayer.Character:findFirstChildOfClass'Humanoid':EquipTool(v)
        end
    end
    wait()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "S", false, game)
    spawn(function()
while toggle == true do wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "I", false, game) wait(0.001)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "O", false, game) wait(0.001)
end
	end)
	Impostor =
		game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid'.Running:Connect(function()
			game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
		end)
        else
        toggle = false
        game:service'Players'.LocalPlayer.Character:findFirstChildOfClass'Humanoid':LoadAnimation(game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet")):Stop()
        game:GetService("ReplicatedStorage"):findFirstChild("ClientAnimations"):findFirstChild("Greet"):Remove()
        Impostor:Disconnect()
    end
end
end
end)
      end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Toggle = Section.NewToggle({
    Text = "Fly ",
    Callback = function(bool)
        print(value)local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

localplayer = plr

if workspace:FindFirstChild("Core") then
workspace.Core:Destroy()
end

local Core = Instance.new("Part")
Core.Name = "Core"
Core.Size = Vector3.new(0.05, 0.05, 0.05)

spawn(function()
Core.Parent = workspace
local Weld = Instance.new("Weld", Core)
Weld.Part0 = Core
Weld.Part1 = localplayer.Character.LowerTorso
Weld.C0 = CFrame.new(0, 0, 0)
end)

workspace:WaitForChild("Core")

local torso = workspace.Core
flying = true
local speed=10
local keys={a=false,d=false,w=false,s=false}
local e1
local e2
local function start()
local pos = Instance.new("BodyPosition",torso)
local gyro = Instance.new("BodyGyro",torso)
pos.Name="EPIXPOS"
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
pos.position = torso.Position
gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
gyro.cframe = torso.CFrame
repeat
wait()
localplayer.Character.Humanoid.PlatformStand=true
local new=gyro.cframe - gyro.cframe.p + pos.position
if not keys.w and not keys.s and not keys.a and not keys.d then
speed=10
end
if keys.w then
new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
speed=speed+0
end
if keys.s then
new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
speed=speed+0
end
if keys.d then
new = new * CFrame.new(speed,0,0)
speed=speed+0
end
if keys.a then
new = new * CFrame.new(-speed,0,0)
speed=speed+0
end
if speed>10 then
speed=5
end
pos.position=new.p
if keys.w then
gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
elseif keys.s then
gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
else
gyro.cframe = workspace.CurrentCamera.CoordinateFrame
end
until flying == false
if gyro then gyro:Destroy() end
if pos then pos:Destroy() end
flying=false
localplayer.Character.Humanoid.PlatformStand=false
speed=10
end
e1=mouse.KeyDown:connect(function(key)
if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
if key=="w" then
keys.w=true
elseif key=="s" then
keys.s=true
elseif key=="a" then
keys.a=true
elseif key=="d" then
keys.d=true
elseif key=="x" then
if flying==true then
flying=false
else
flying=true
start()
end
end
end)
e2=mouse.KeyUp:connect(function(key)
if key=="w" then
keys.w=false
elseif key=="s" then
keys.s=false
elseif key=="a" then
keys.a=false
elseif key=="d" then
keys.d=false
end
end)
start()
    end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Toggle = Section.NewToggle({
    Text = "Korblox",
    Callback = function(bool)
        print(value)local ply = game.Players.LocalPlayer
        local chr = ply.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1"
        
      end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Toggle = Section.NewToggle({
    Text = "Headless",
    Callback = function(bool)
        print(value)game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0, 0)
    game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0, 0)
    game.Players.LocalPlayer.Character.Head.Massless = true
    game.Players.LocalPlayer.Character.Head.Massless = true
      end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Toggle = Section.NewToggle({
    Text = "Autodrop (I made gui)",
    Callback = function(bool)
        print(value)local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local RunService = game:GetService("RunService")
local money = 0
RunService.RenderStepped:Connect(function()
    local poo,_ = string.gsub(game.Players.LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text:split("$")[2], ",", "")
    money = tonumber(poo)
    print(tonumber(poo))
end)

local selectedMoney = 100
local UI = Material.Load({
    Title = "Evaa#9995",
    Style = 2,
    SizeX = 200,
    SizeY = 350,
    Theme = "Dark"
})

function sendNotif(title, text)
   game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    }) 
end

function dropMoney(amount)
    game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney", "" .. amount)
    sendNotif("Money dropped!", "$" .. amount .. " dropped!")
    
end


local Page = UI.New({
    Title = "Drop Money"
})

Page.Button({
    Text = "Drop All Money",
    Callback = function()
        --local poggers = string.gsub(game.Players.LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text:split("$")[2], ",", "")
        while money > 100 do
            dropMoney(money > 10000 and 10000 or money)
            wait(3)
        end
       --dropMoney(game.Players.LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text:split("$")[1])
    end,
    Menu = {
        Info = function(self)
            UI.Banner({
                Text = "Drops all your money"            
            })
        end
    }
})

Page.Slider({
    Text = "Money",
    Min = 100,
    Max = 10000,
    Def = 0,
    Callback = function(val)
        selectedMoney = val
    end
})

Page.Button({
    Text = "Drop Money",
    Callback = function()
        dropMoney(selectedMoney)
    end,
    Menu = {
        Info = function(self)
            UI.Banner({
                Text = "Drops selected money"            
            })
        end
    }
})

--dropMoney(100)
        
      end, 
    Default = true,
    Description = "This turns ON and OFF when you click it !"
})

local Page = Window.NewPage({Text = "ESP"})

local Section = Page.NewSection({Text = "ESP"})

local Toggle = Section.NewToggle({
    Text = "BOXESP (Decient not recommended)",
    Callback = function(bool)
        print(value)loadstring(game:HttpGet(("https://raw.githubusercontent.com/farthefarter/universal/main/boxesp.lua"), true))()
        
      end, 
    Default = true,
    Description = "Shows people location with a box"
})

local Toggle = Section.NewToggle({
    Text = "CHAMS (recommended)",
    Callback = function(bool)
        print(value)loadstring(game:HttpGet(("https://raw.githubusercontent.com/farthefarter/universalchams/main/fludycham.lua"), true))()
        
      end, 
    Default = true,
    Description = "Shows peoples location"
})