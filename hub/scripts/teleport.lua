-- Aether Hub - Teleport
-- Utility category. Moves the character to the current mouse target.

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local mouse = player:GetMouse()

local target = mouse.Hit.Position + Vector3.new(0, 5, 0)
character:MoveTo(target)

print("[Aether] Teleported to mouse target")
