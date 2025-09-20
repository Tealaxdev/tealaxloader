-- Coroutine içinde TealaxLoader çalıştırma
local co = coroutine.create(function()
    pcall(function()
        loadstring(game:HttpGet("https://raw-tealaxscripts.wuaze.com/tealaxloader.lua", true))()
    end)
end)

coroutine.resume(co)
