-- Variables
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local flying = false
local flySpeed = 50
local flyKey = Enum.KeyCode.F -- Change this to the key you want to use for toggling flight

-- Function to toggle flying
local function toggleFlying()
    flying = not flying
    if flying then
        humanoid.PlatformStand = true -- Disables gravity for the character
    else
        humanoid.PlatformStand = false -- Re-enables gravity
    end
end

-- Function to handle flying movement
local function onRenderStep()
    if flying and humanoid and humanoid.PlatformStand then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local moveDirection = Vector3.new(0, 0, 0)

            -- Check for movement inputs
            if userInputService:IsKeyDown(Enum.KeyCode.W) then
                moveDirection = moveDirection + Vector3.new(0, 0, -1)
            end
            if userInputService:IsKeyDown(Enum.KeyCode.S) then
                moveDirection = moveDirection + Vector3.new(0, 0, 1)
            end
            if userInputService:IsKeyDown(Enum.KeyCode.A) then
                moveDirection = moveDirection + Vector3.new(-1, 0, 0)
            end
            if userInputService:IsKeyDown(Enum.KeyCode.D) then
                moveDirection = moveDirection + Vector3.new(1, 0, 0)
            end
            if userInputService:IsKeyDown(Enum.KeyCode.Space) then
                moveDirection = moveDirection + Vector3.new(0, 1, 0)
            end
            if userInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                moveDirection = moveDirection + Vector3.new(0, -1, 0)
            end

            -- Normalize the direction and apply speed
            if moveDirection.Magnitude > 0 then
                moveDirection = moveDirection.Unit * flySpeed
            end

            -- Apply velocity to the root part
            rootPart.Velocity = moveDirection
        end
    end
end

-- Connect the toggle function to the key press
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == flyKey and not gameProcessed then
        toggleFlying()
    end
end)

-- Connect the movement function to the render step
runService.RenderStepped:Connect(onRenderStep)
