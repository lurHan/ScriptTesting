local Version = 1.0
local NAME_HUB = "Rizz HUB"

print(string.format("Welcome to my HUB : [%s], Version : %.1f", NAME_HUB, Version))

local games = {
    GameId = 130589053671802,
    PlaceId = 1,
}

local list_games = {
    [130589053671802] = "https://raw.githubusercontent.com/RizzHUB01/ScriptTesting/refs/heads/main/MountSyududu.lua",
}

local gameID = games.GameId
local placeID = games.PlaceId
local scriptURL = list_games[gameID]

if scriptURL then
    print(string.format("[%s] Game supported! UniverseId: %d", NAME_HUB, gameID))
    print(string.format("[%s] Loading script...", NAME_HUB))
    print(scriptURL)

    local ok, err = pcall(function()
        loadstring(game:HttpGet(scriptURL))()
    end)

    if not ok then
        print(string.format("[%s] Gagal load script: %s", NAME_HUB, tostring(err)))
    end
else
    print(string.format("\n[%s] Game belum didukung\n Game ID: %d\nPlace ID: %d", NAME_HUB, gameID, placeID))
end


