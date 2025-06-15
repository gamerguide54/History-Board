#Persistent
SetWorkingDir %A_ScriptDir%

;Tray options
Menu, Tray, Tip, History Board 
Menu, Tray, Icon, Data/clipboard.ico
Menu, tray, NoStandard
Menu, Tray, Add, Show History, show
Menu, Tray, Add, Delete History, delete
;Menu, Tray, Add, Pause,  pause
Menu, Tray, Add, Exit,  exitapp 




OnClipboardChange:
FileAppend, %clipboard% `n, Data/History.txt
ToolTip Copy
Sleep 1000
ToolTip   ; Turn off the tip.
return

show:
Run, %A_ScriptDir% \Data\window.exe
return

delete:
FileDelete, Data/History.txt
return


;pause:
;Pause
;return


exitapp:
ExitApp
return