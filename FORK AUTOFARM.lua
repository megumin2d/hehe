wait(0.4)
local darius = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/idonthaveoneatm/darius/refs/heads/main/bundled.luau"))()
print("darius loaded successfully.")
wait(0.4)
local darius = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/idonthaveoneatm/darius/refs/heads/main/minified.luau"))()
print("darius2 loaded successfully.")
wait(0.4)
local darius = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/idonthaveoneatm/darius/refs/heads/main/rbxmSuite.luau"))()
print("darius3 loaded successfully.")

---value
_G.autofarm = true
_G.autofarm2 = true
_G.Fly = true
_G.Stop_Tween = false
_G.Clip = false

---tweengoto
function TP2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 100 then
        Speed = 75
    elseif Distance < 500 then
        Speed = 110
    elseif Distance < 1200 then
        Speed = 180
    elseif Distance >= 2000 then
        Speed = 1100
    elseif Distance >= 5000 then
        Speed = 650000
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
    if _G.Stop_Tween==true then
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = P1}
        ):Cancel()
    end
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
end

---walkspeed

---Fly
---function Crystal zone
function autofarm2()
    while _G.autofarm2 == true do
        local A_1 = {["HitPosition"] = Vector3.new(-7435.2080078125, -644.4749755859375, 920.0764770507812) }
        local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
        Event:FireServer(A_1)
        local A_2 = {["Alpha"] = 1.0, ["ResponseTime"] = 0.2}
        local Event = game:GetService("ReplicatedStorage").Events.Tools.Attack
        Event:FireServer(A_2)
        wait(11)
        local A_1 = {}
        local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
        Event:FireServer(A_1)
        end
    end

---function sell zone farm
function autofarm()
    while _G.autofarm == true do 
        local A_1 = {["HitPosition"] = Vector3.new(2253.062255859375, -5.974999904632568, -752.5614624023438)}
        local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
        Event:FireServer(A_1)
        local A_2 = {["Alpha"] = 1.0, ["ResponseTime"] = 0.2}
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Attack
        Event:FireServer(A_2)
        wait(13)
        local A_1 = {}
        local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
        Event:FireServer(A_1)       
        end
    end

---окно в очко
print("Creating window...")
local window = darius:Window({
    Title = "Refinery Caves 2💀",
    Description = "Script version - 0.2beta  alfa  gamma",

    -- Optional
    HideBind = Enum.KeyCode.T,
    Parent = target, -- Defaults to game.CoreGui
    UseConfig = false,
    Config = "config",
    IsMobile = false,
    Theme = {} -- Custom theme on launch
})

print("Window created successfully.")
print("Creating tab...")
local tab = window:Tab({
    Name = "Player",
    -- Optional
    Image = "rbxassetid://17071398587" -- rbxassetid:// or getcustomasset
})

local slider = tab:Slider({
    Name = "WalkSpeed",
    Min = 1,
    Max = 200,
    Callback = function(speed)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end,

    -- Optional
    IsEnabled = true, -- Defaults to true
    DisabledText = "Hey you cant use this!",
    FLAG = "slider_walkspeed", -- Unique flag
    Default = 16,
    DisplayAsPercent = false,
    DecimalPlace = 3 -- Would return 0.00 places
})

print("tab created successfully.")
print("creating button....")
local button = tab:Button({
    Name = "defolt speed",
    Callback = function(): nil
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!"
})

print("button created successfully.")
print("creating tab(fishing)....")
---Tab
local tab = window:Tab({
    Name = "Fishing",

    -- Optional
    Image = "rbxassetid://17071398587" -- rbxassetid:// or getcustomasset
})

---autofarm
print("tab(fishing) created successfully.")
print("creating toggle(autofarm sell zone)....")
local toggle = tab:Toggle({
    Name = "autofarm sell zone",
    Callback = function(value)
        _G.autofarm = value
        autofarm()
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "toggle_autofarm_sell_zone", -- Unique flag
    Default = false,
    LinkKeybind = false,
    Bind = Enum.KeyCode.L
})

print("toggle(autofarm sell zone) created successfully.")
print("creating toggle(autofarm crystal zone)....")
local toggle = tab:Toggle({
    Name = "autofarm crystal zone",
    Callback = function(value)
        _G.autofarm2 = value
        autofarm2()
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "toggle_autofarm_crystal_zone", -- Unique flag
    Default = false,
    LinkKeybind = false,
    Bind = Enum.KeyCode.P
})

print("toggle(autofarm crystal zone) created successfully.")
print("creating tab(teleport)....")
local tab = window:Tab({
    Name = "teleport",

    -- Optional
    Image = "" -- rbxassetid:// or getcustomasset
})

print("tab(teleport) created successfully.")
print("creating dropdown....")
local dropdown = tab:Dropdown({
    Name = "teleport zone",
    Items = {
        { -- Special Item Customization
            Value = "your Plot👩‍👩‍👧"
        }, 
    "Sell zone(fish)", "Sell zone(ore,woob)","Novabay", "Crystal zone", "Firefly area"},
    Callback = function(teleport)
        if teleport == "Sell zone(fish)" then
            TP2(CFrame.new(2219.23877, 8.10304642, -721.457397, -0.768862605, 0.0599061698, -0.636601567, -6.46857146e-09, 0.995601475, 0.0936891809, 0.639414012, 0.0720341131, -0.765480757))
        elseif teleport == "Sell zone(ore,woob)" then 
            TP2(CFrame.new())
        elseif teleport == "Novabay" then 
            TP2(CFrame.new(1917.32397, 3.27575135, -189.948914, -0.538471222, -1.65119349e-08, -0.842643917, -2.33049189e-08, 1, -4.70294337e-09, 0.842643917, 1.71053482e-08, -0.538471222))
        elseif teleport == "Crystal zone" then
            TP2(CFrame.new(-7432.08008, -635.786377, 880.169678, -0.998294771, -0.00383411837, 0.0582483187, -8.77007711e-09, 0.997840643, 0.0656813905, -0.0583743677, 0.0655693859, -0.996139109))
        elseif teleport == "Firefly area" then
            TP2(CFrame.new(1547.49817, -371.630035, -403.885071, -0.123001128, 0.000174543442, 0.992406487, -8.57980176e-09, 1, -0.000175880035, -0.992406547, -2.16419576e-05, -0.123001128))
        end
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "dropdown_teleport_zone", -- Unique flag
    Default = "" or {}, -- Table if Multiselect and string if not
    Multiselect = false,
    Regex = function(itemToClean)
    -- MUST RETURN A STRING NO MATTER WHAT
        local cleanedItem = itemToClean
        return cleanedItem or itemToClean
    end
})

print("dropdown created successfully")
---уведомка
darius:Notify({
    Title = "успешный энжект",
    Body = "пососи🤙🏿",
    Duration = 6.5,

    -- Optional
    Image = "", -- rbxassetid:// or getcustomasset
    ImageColor = Color3.fromRGB(255,0,0),
})
