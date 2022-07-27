#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>

Tar()

Func tar()
        ; Detects and launch BSGLauncher.
        Local $iPID = Run("\Battlestate Games\BsgLauncher\BsgLauncher.exe", "")
        ; Wait for 4 seconds.
        Sleep(4000)
EndFunc


; Find a specific yellow pixel in order to move the mouse and click start game.
Local $aCoord = PixelSearch(0, 0, 1422, 803, 0xCCC19C)
If Not @error Then
	MouseMove($aCoord[0], $aCoord[1]) ; Move the mouse cursor to the x, y position of 10, 100.
	Sleep(2000)
	MouseClick($MOUSE_CLICK_LEFT)

EndIf

