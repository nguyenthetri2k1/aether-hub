-- Aether Hub - ESP
-- Visuals category. Uses Highlight instances; no external assets.

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local function attach(player)
    local function onCharacter(character)
        if character:FindFirstChild("AetherESP") then return end
        local highlight = Instance.new("Highlight")
        highlight.Name = "AetherESP"
        highlight.FillColor = Color3.fromRGB(34, 211, 238)
        highlight.FillTransparency = 0.75
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.OutlineTransparency = 0.2
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Parent = character
    end

    if player.Character then onCharacter(player.Character) end
    player.CharacterAdded:Connect(onCharacter)
end

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then attach(player) end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then attach(player) end
end)

print("[Aether] ESP enabled")
