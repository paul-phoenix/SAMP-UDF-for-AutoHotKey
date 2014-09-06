SendMode Input
SetWorkingDir %A_ScriptDir%
#Warn
#UseHook
#NoEnv
#SingleInstance force
#include %A_ScriptDir%\SAMP.ahk

Hotkey, Enter, Off
Hotkey, Escape, Off
return

+T:: 
~t::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
return

~NumpadEnter::
~Enter::
Suspend Permit
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

~Escape::
Suspend Permit
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return


;#########################################################################################################


;Type in a nickname and it shows some info about this player
Numpad1::
SendInput tName:{Space}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Input varName, V I M,{enter}
SendInput {end}+{home}{Del}{esc}
varID := getPlayerIdByName(varName)
showGameText(getPlayerNameById(varID) "~n~Score: " getPlayerScoreById(varID) "~n~Ping: " getPlayerPingById(varID), 2000, 5)
return

;Type in a ID and it shows some info about this player
Numpad2::
SendInput tID:{Space}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Input varID, V I M,{enter}
SendInput {end}+{home}{Del}{esc}
;updateScoreboardData()     ;wird nun implizit aufgerufen
showGameText(getPlayerNameById(varID) "~n~Score: " getPlayerScoreById(varID) "~n~Ping: " getPlayerPingById(varID) "~n~IsNPC: " isNPCById(varID), 2000, 5)
return

;play an "audio stream"
Numpad3::
playAudioStream("http://breakz.us/radio/listen.pls")
return

;stopp an "audio stream"
Numpad4::
stopAudioStream()
return

;show some info about the local player, use some functions
Numpad5::
if ( isInChat() )
	return
addMessageToChatWindow("{FFFFFF}Name: {FF0000}" getUsername())
addMessageToChatWindow("{FFFFFF}HP: {FF0000}" getPlayerHealth() "{FFFFFF}, ARMOR: {FF0000}" getPlayerArmor())
addMessageToChatWindow("{FFFFFF}Money: {FF0000}" getPlayerMoney())
addMessageToChatWindow("{FFFFFF}Interior id: {FF0000}" getPlayerInteriorId())
pos := getCoordinates()
addMessageToChatWindow("{FFFFFF}Zone: {FF0000}" calculateZone(pos[1],pos[2],pos[3]) "{FFFFFF}, Stadt: {FF0000}" calculateCity(pos[1],pos[2],pos[3]))
sendChatMessage("blub")
sendChatMessage("/asd")
showGameText("test", 2000, 5)
return

;shows a dialog-box
Numpad6::
showDialog(0, "Titel", "some text...", "OK" )
return

;show some info about the current vehicle
Numpad7::
addMessageToChatWindow("{FFFFFF}Vehicle Type:" getVehicleType())
addMessageToChatWindow("{FFFFFF}Model:" getVehicleModelId())
addMessageToChatWindow("{FFFFFF}Model Name:" getVehicleModelName())
addMessageToChatWindow("{FFFFFF}Is Driver:" isPlayerDriver())
addMessageToChatWindow("{FFFFFF}Light State:" getVehicleLightState())
addMessageToChatWindow("{FFFFFF}Engine State:" getVehicleEngineState())
addMessageToChatWindow("{FFFFFF}Door State:" getVehicleLockState())
return
