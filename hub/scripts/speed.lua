-- Aether Hub - Speed
-- Movement category. Change WALK_SPEED if you need a different value.

local WALK_SPEED = 32
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.WalkSpeed = WALK_SPEED

print("[Aether] WalkSpeed =", WALK_SPEED)
