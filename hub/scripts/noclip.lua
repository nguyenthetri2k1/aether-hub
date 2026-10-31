-- Aether Hub - NoClip
-- Movement category. Run again to toggle collision back on.

if _G.AetherNoClip then
    _G.AetherNoClip = false
    print("[Aether] NoClip disabled")
    return
end

_G.AetherNoClip = true
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

RunService.Stepped:Connect(function()
    if not _G.AetherNoClip then return end
    local character = player.Character
    if not character then return end
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end)

print("[Aether] NoClip enabled")
