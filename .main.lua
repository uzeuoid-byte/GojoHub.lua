
-- GOJO HUB ANDROID
-- Jujutsu Shenanigans

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "GojoHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 270, 0, 350)
frame.Position = UDim2.new(0.5, -135, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(25, 10, 40)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundColor3 = Color3.fromRGB(100, 0, 180)
title.Text = "GOJO HUB | ANDROID"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 18
title.Parent = frame

local function addButton(name, y)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 35)
    button.Position = UDim2.new(0.05, 0, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(65, 20, 100)
    button.TextColor3 = Color3.new(1,1,1)
    button.Text = name .. " : OFF"
    button.TextSize = 14
    button.Parent = frame

    Instance.new("UICorner", button)

    local active = false
    button.MouseButton1Click:Connect(function()
        active = not active
        button.Text = name .. (active and " : ON" or " : OFF")
    end)
end

addButton("ESP", 60)
addButton("Auto Block", 105)
addButton("Aimbot", 150)
addButton("Kill Aura", 195)
addButton("Auto Combo", 240)
addButton("Sukuna Aura", 285)

