--!strict
-- PlayerStarter.client.lua
-- Runs on each client when they join the game.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SharedConfig = require(ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Config"))

local function showWelcomeMessage()
    local player = Players.LocalPlayer
    task.wait(1)
    local message = string.format("%s v%s - %s", SharedConfig.GameName, SharedConfig.Version, SharedConfig.DefaultSpawnMessage)
    print(message)
    if player then
        player:LoadCharacter()
    end
end

showWelcomeMessage()
