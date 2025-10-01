--!strict
-- Main.server.lua
-- Entry point for server-side logic. This script is automatically run by Roblox.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SharedConfig = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Config"))

local function onPlayerAdded(player: Player)
    local message = string.format("Velkommen til %s, %s!", SharedConfig.GameName, player.DisplayName)
    print(message)
end

Players.PlayerAdded:Connect(onPlayerAdded)

print("Server script initialiseret og klar til at køre!")
