#NoTrayIcon
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Menu Tray, Icon, clipboard.ico

Gui -MaximizeBox
Gui Font, s17
Gui Add, Edit, vMyEdit  x0 y0 w620 h419 +ReadOnly
Gui Font

FileRead, FileContents, History.txt
GuiControl,, MyEdit, %FileContents%

Gui Show, w620 h419, History Board
Return

GuiSize:
    If (A_EventInfo == 1) {
        Return
    }

Return

GuiEscape:
GuiClose:
    ExitApp