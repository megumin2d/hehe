local darius = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/idonthaveoneatm/darius/refs/heads/main/bundled.luau"))()
local darius = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/idonthaveoneatm/darius/refs/heads/main/minified.luau"))()
local darius = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/idonthaveoneatm/darius/refs/heads/main/rbxmSuite.luau"))()
---value
_G.autofarm = true
_G.Fly = true


---walkspeed

---Fly

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
local window = darius:Window({
    Title = "Refinery Caves 2💀",
    Description = "Script version - 0.2beta \ alfa \ gamma",

    -- Optional
    HideBind = Enum.KeyCode.T,
    Parent = target, -- Defaults to game.CoreGui
    UseConfig = false,
    Config = "config",
    IsMobile = false,
    Theme = {} -- Custom theme on launch
--- найстройки игрока
})
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
    FLAG = "slider",
    Default = 16,
    DisplayAsPercent = false,
    DecimalPlace = 3 -- Would return 0.00 places
})
local button = tab:Button({
    Name = "defolt speed",
    Callback = function(): nil
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!"
})
---уведомка
darius:Notify({
    Title = "успешный энжект",
    Body = "пососи🤙🏿",
    Duration = 6.5,

    -- Optional
    Image = "", -- rbxassetid:// or getcustomasset
    ImageColor = Color3.fromRGB(255,0,0),
})
---Tab
local tab = window:Tab({
    Name = "Fishing",

    -- Optional
    Image = "rbxassetid://17071398587" -- rbxassetid:// or getcustomasset
})
---autofarm
local toggle = tab:Toggle({
    Name = "autofarm sell zone",
    Callback = function(value)
        _G.autofarm = value
        autofarm()
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "toggle_LinkKeybind",
    Default = false,
    LinkKeybind = true,
    Bind = Enum.KeyCode.E
})
local tab = window:Tab({
    Name = "teleport",

    -- Optional
    Image = "" -- rbxassetid:// or getcustomasset
})
local dropdown = tab:Dropdown({
    Name = "teleport zone",
    Items = {
        { -- Special Item Customization
            Value = "your Plot👩‍👩‍👧"
        }, 
    "sell zone", "cristal zone", "Firefly area"},
    Callback = function(value): string | table
        
    end,

    -- Optional
    IsEnabled = true, -- Defaults true
    DisabledText = "Hey you cant use this!",
    FLAG = "dropdown_SingleSelection",
    Default = "" or {}, -- Table if Multiselect and string if not
    Multiselect = false,
    Regex = function(itemToClean)
    -- MUST RETURN A STRING NO MATTER WHAT
        local cleanedItem = itemToClean
        return cleanedItem or itemToClean
    end
})