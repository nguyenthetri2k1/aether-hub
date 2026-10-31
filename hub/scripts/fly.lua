-- Aether Hub - Fly
-- Movement category. Toggle with F. Basic velocity flight.

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

local body = Instance.new("BodyVelocity")
body.Name = "AetherFly"
body.MaxForce = Vector3.new(1e5, 1e5, 1e5)
body.Velocity = Vector3.zero
body.Parent = root

local flying = false
UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode ~= Enum.KeyCode.F then return end
    flying = not flying
    body.Velocity = flying and Vector3.new(0, 55, 0) or Vector3.zero
    print("[Aether] Fly", flying and "enabled" or "disabled")
end)

print("[Aether] Fly ready - press F to toggle")
