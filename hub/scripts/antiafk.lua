-- Aether Hub - Anti-AFK
-- Utility category. Sends a lightweight input pulse when the client idles.

local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("[Aether] Anti-AFK pulse sent")
end)

print("[Aether] Anti-AFK armed")
