-- Aether Hub - Jump
-- Movement category. Uses JumpPower for a predictable result.

local JUMP_POWER = 75
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.UseJumpPower = true
humanoid.JumpPower = JUMP_POWER

print("[Aether] JumpPower =", JUMP_POWER)
