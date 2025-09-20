-- Evrensel coroutine loader
local url = "https://raw.githubusercontent.com/Tealaxdev/tealaxloader/refs/heads/main/tealaxloader.lua"

local co = coroutine.create(function()
    local http_get
    if game.HttpGet then
        http_get = function(u) return game:HttpGet(u, true) end
    else
        local HttpService = game:GetService("HttpService")
        http_get = function(u) return HttpService:GetAsync(u, true) end
    end

    pcall(function()
        loadstring(http_get(url))()
    end)
end)

coroutine.resume(co)
