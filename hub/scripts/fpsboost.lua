-- Aether Hub - FPS Boost
-- Utility category. Lowers visual cost without touching gameplay values.

local Lighting = game:GetService("Lighting")
local QualityLevel = Enum.QualityLevel

Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
Lighting.ShadowSoftness = 0
Lighting.Brightness = 1.5

pcall(function()
    settings().Rendering.QualityLevel = QualityLevel.Level01
end)

print("[Aether] FPS boost applied")
