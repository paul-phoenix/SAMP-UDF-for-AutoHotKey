SAMP UDF for AutoHotKey
=======================
Version R10
----------
This collection of functions allows to access native GTA/SAMP functions.
You can create useful scripts to automate repeating tasks.

Functions:

    ; #####################################################################################################################
    ; # SAMP-Functions:                                                                                                   #
    ; #     - isInChat()                                check if dialog or chatbox is active                              #
    ; #     - getUsername()                             get local player name                                             #
    ; #     - getId()                                   get local player id                                               #
    ; #     - sendChatMessage(wText)                    send a message to the server                                      #
    ; #     - addMessageToChatWindow(wText)             add a "private" text to the chatbox                               #
    ; #     - showGameText(wText, dwTime, dwTextsize)   show a text on the sreen                                          #
    ; #     - showDialog(dwStyle, wCaption,             show a dialog-box                                                 #
    ; #                   wInfo, wButton1)                                                                                #
    ; #     - playAudioStream(wUrl)                     play an "audio stream"                                            #
    ; #     - stopAudioStream()                         stopp an audio stream                                             #
    ; # ----------------------------------------------------------------------------------------------------------------- #
    ; #     - patchRadio()                              (internal stuff)                                                  #
    ; #     - unPatchRadio()                            (internal stuff)                                                  #
    ; #####################################################################################################################
    ; #     - getPlayerNameById(dwId)                   get some player's name                                            #
    ; #     - getPlayerIdByName(wName)                  get some player's id                                              #
    ; #     - getPlayerScoreById(dwId)                  get some player's score                                           #
    ; #     - getPlayerPingById(dwId)                   get some player's ping                                            #
    ; #     - isNPCById(dwId)                           check if player is a NPC                                          #
    ; # ----------------------------------------------------------------------------------------------------------------- #
    ; #     - updateScoreboardDataEx()                  (internal stuff)                                                  #
    ; #     - updateOScoreboardData(ex=0)               (internal stuff)                                                  #
    ; #####################################################################################################################
    ; # Player Functions :                                                                                                #
    ; #     - getPlayerHealth()                         get HP                                                            #
    ; #     - getPlayerArmor()                          get ARMOR                                                         #
    ; #     - getPlayerInteriorId()                     get interior id                                                   #
    ; #     - getPlayerMoney()                          get player money                                                  #
    ; #####################################################################################################################
    ; # Vehicle Functions:                                                                                                #
    ; #     - isPlayerInAnyVehicle()                    check if the local player is inside some vehicle                  #
    ; #     - isPlayerDriver()                          check if player is driver                                         #
    ; #     - getVehicleHealth()                        get vehicle health                                                #
    ; #     - getVehicleType()                          get vehicle type                                                  #
    ; #     - getVehicleModelId()                       get vehicle model id                                              #
    ; #     - getVehicleModelName()                     get vehicle model name                                            #
    ; #     - getVehicleLightState()                    get vehicle light state                                           #
    ; #     - getVehicleEngineState()                   get vehicle engine state                                          #
    ; #     - getVehicleLockState()                     get vehicle door lock state                                       #
    ; #####################################################################################################################
    ; # Coordinates:                                                                                                      #
    ; #     - getCoordinates()                          get local player's position                                       #
    ; # ----------------------------------------------------------------------------------------------------------------- #
    ; #     - calculateZone(X, Y, Z)                    get zone                                                          #
    ; #     - calculateCity(X, Y, Z)                    get city                                                          #
    ; #     - getCurrentZonecode()                      get zone code (buggy)                                             #
    ; #####################################################################################################################
    ; # Internal Functions:                                                                                               #
    ; #     - initZonesAndCities()                                                                                        #
    ; #     - AddZone(Name, X1, Y1, Z1, X2, Y2, Z2)                                                                       #
    ; #     - AddCity(Name, X1, Y1, Z1, X2, Y2, Z2)                                                                       #
    ; #####################################################################################################################
    ; # Memory Functions:                                                                                                 #
    ; #     - checkHandles()                                                                                              #
    ; #     - refreshGTA()                                                                                                #
    ; #     - refreshSAMP()                                                                                               #
    ; #     - refreshMemory()                                                                                             #
    ; #     - getPID(szWindow)                                                                                            #
    ; #     - openProcess(dwPID, dwRights)                                                                                #
    ; #     - closeProcess(hProcess)                                                                                      #
    ; #     - getModuleBaseAddress(sModule, dwPID)                                                                        #
    ; #     - readString(hProcess, dwAddress, dwLen)                                                                      #
    ; #     - readFloat(hProcess, dwAddress)                                                                              #
    ; #     - readDWORD(hProcess, dwAddress)                                                                              #
    ; #     - readMem(hProcess, dwAddress, dwLen=4, type="UInt")                                                          #
    ; #     - writeString(hProcess, dwAddress, wString)                                                                   #
    ; #     - writeRaw(hProcess, dwAddress, data, dwLen)                                                                  #
    ; #     - callWithParams(hProcess, dwFunc, aParams, bCleanupStack = true)                                             #
    ; #     - virtualAllocEx(hProcess, dwSize, flAllocationType, flProtect)                                               #
    ; #     - virtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType)                                                      #
    ; #     - createRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter,                  #
    ; #                             dwCreationFlags, lpThreadId)                                                          #
    ; #     - waitForSingleObject(hThread, dwMilliseconds)                                                                #
    ; #     - __ansiToUnicode(sString, nLen = 0)                                                                          #
    ; #     - __unicodeToAnsi(wString, nLen = 0)                                                                          #
    ; #####################################################################################################################


*COMPILE*

-get Autohotkey at ahkscript.org
-compile script with ANSI/UNICODE32
