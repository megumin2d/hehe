if game.PlaceId == 12196278347 then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Refinery Caves 2💀", "RJTheme6")
local Tab = Window:NewTab("Information") 
local Section = Tab:NewSection("Script version - 0.1")
local Section = Tab:NewSection("-----------------------------------------------------------------")
local Section = Tab:NewSection("This version is made just for this fishing rod -")
local Section = Tab:NewSection("steel fishing rod (empowered on +20dmg)")
local Section = Tab:NewSection("The script will be finalized in the future,")
local Section = Tab:NewSection("and new functionality will be added.")
local Tab = Window:NewTab("Fishing")
local Section = Tab:NewSection("Auto fishing in the sale area")
xyeta = 0
abog = 0
mak = 0
Section:NewButton("On", "Enabling automatic fishing", function()      -- под этим будет код на включение рыбалки через while и когда кнопку нажимаешь будет + 1 в переменную 
    xyeta = 1
    while xyeta > 0 do 
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
end) -- завершение GUI вкл
Section:NewButton("Off", "Disabling automatic fishing", function()      -- тут будет на выключение рыбалки
    xyeta = 0
end) -- завершение GUI выкл
local Section = Tab:NewSection("Auto fishing in the crystal zone") -- начало авторыблки КРИСТАЛ зоны
Section:NewButton("On", "Enabling automatic fishing", function() -- вкл рыбалки 
    abog = 1
    while abog > 0 do 
          local A_1 = {["HitPosition"] = Vector3.new(-7435.2080078125, -644.4749755859375, 920.0764770507812) }
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
         Event:FireServer(A_1)
         local A_2 = {["Alpha"] = 1.0, ["ResponseTime"] = 0.2}
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Attack
         Event:FireServer(A_2)
         wait (11)
         local A_1 = {}
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
         Event:FireServer(A_1)
         end
end)
Section:NewButton("Off", "Disabling automatic fishing", function() -- выкл рыбалки
    abog = 0
end)
local Section = Tab:NewSection("Auto fishing in the firefly area") -- начало рыбалки в зоне СВЕТЛЯЧКОВ
Section:NewButton("On", "Enabling automatic fishing", function()      -- под этим будет код на включение рыбалки через while и когда кнопку нажимаешь будет + 1 в переменную 
    mak = 1
    while mak > 0 do 
         local A_1 = {["HitPosition"] = Vector3.new(1509.1240234375, -490.9750061035156, -417.8569030761719)}
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
         Event:FireServer(A_1)
         local A_2 = {["Alpha"] = 1.0, ["ResponseTime"] = 0.2}
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Attack
         Event:FireServer(A_2)
         wait (13)
         local A_1 = {}
         local Event = game:GetService("ReplicatedStorage").Events.Tools.Charge
         Event:FireServer(A_1)
         end
end) -- завершение GUI вкл
Section:NewButton("Off", "Disabling automatic fishing", function()      -- тут будет на выключение рыбалки
    mak = 0
end) -- завершение GUI выкл
local Tab = Window:NewTab("Teleport") -- НАЧАЛО GUI ТП
local Section = Tab:NewSection("Teleports")
Section:NewDropdown("Choose a place to teleport", "It simply teleports you to a selected location.", {"Sell zone", "Crystal zone", "Firefly area"}, function(asd)
    if asd == "Sell zone" then
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2219.23877, 8.10304642, -721.457397, -0.768862605, 0.0599061698, -0.636601567, -6.46857146e-09, 0.995601475, 0.0936891809, 0.639414012, 0.0720341131, -0.765480757)
elseif asd == "Crystal zone" then
game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7432.08008, -635.786377, 880.169678, -0.998294771, -0.00383411837, 0.0582483187, -8.77007711e-09, 0.997840643, 0.0656813905, -0.0583743677, 0.0655693859, -0.996139109)
elseif asd == "Firefly area" then
game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1547.49817, -371.630035, -403.885071, -0.123001128, 0.000174543442, 0.992406487, -8.57980176e-09, 1, -0.000175880035, -0.992406547, -2.16419576e-05, -0.123001128)
end
end) -- завершение GUI телепорта
