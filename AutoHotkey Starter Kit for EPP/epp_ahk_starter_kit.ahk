#NoEnv  ; Recommended for all scripts. Avoids checking empty variables to see if they are environment variables.
#SingleInstance force; If already running, script is not allowed to run again.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.


; ----------- Define a context group called EPP -----------  
GroupAdd, EPP, ahk_exe EditPadPro7.exe
GroupAdd, EPP, ahk_exe EditPadPro8.exe
GroupAdd, EPP, ahk_exe EditPadPro9.exe



; Ctrl + Alt + V: paste the html content of the Windows clipboard as text
; Works outside of EPP (global hotkey)
; To make it specific to EPP, move this block to the line after #IfWinActive ahk_group EPP 
^!v::
Run html_clip\html_clip_paste_run-once.ahk
Return


; -------------- Hotkeys for EPP -----------------
#IfWinActive ahk_group EPP 

^NumpadAdd::
Send ^{WheelUp}
return

^NumpadSub::
Send ^{WheelDown}
return

+F5:: ; Load first saved layout
Send !v
Sleep 10
Send u{Enter}
return

; Ctrl + Alt + C: toggle Edit/Copy As HTML, Copy, toggle back off
; ASSUMES: 
; 1. that initial status of Edit/Copy as HTML is off
; 2. that Ctrl + Alt + Shift + C toggles Edit/Copy As HTML
^!c::
Run html_clip\html_clip_copy_run-once.ahk
Return

#IfWinActive
; -------------- End hotkeys for EPP -----------------

