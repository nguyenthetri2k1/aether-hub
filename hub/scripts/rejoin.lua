-- Aether Hub - Rejoin
-- Utility category. Reconnects to the current place.

local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

print("[Aether] Rejoining...")
TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
