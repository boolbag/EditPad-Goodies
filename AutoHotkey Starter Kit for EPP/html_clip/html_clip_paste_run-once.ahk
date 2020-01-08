#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include html_clip\WinClipAPI.ahk
#Include html_clip\WinClip_mod.ahk
wc := new WinClip

; THIS SCRIPT IS ONLY CALLED FROM A HOTKEY IN ANOTHER SCRIPT
; THAT WAY, IT RUNS AND EXITS, AND WINCLIP IS UNLOADED

; THIS SCRIPT PASTES THE HTML CONTENT OF THE CLIPBOARD
; YOU CAN ONLY PASTE ONCE BECAUSE GETHTML MESSES WITH THE HTML CONTENT OF THE CLIPBOARD

trimmed := TrimHtml()
if trimmed {
   PasteThis(trimmed)
}


;-------------- TrimHtml
TrimHtml() {
   trimmed := ""
   html := WinClip.GetHTML()
   if html {
      ; remove duplicate html tag that sometimes ends up there
      trimmed := RegExReplace( html, "(?is)\A.*?\K<html>(?=.*<html)","")
      ; trim end when there are several sets of closing tags
      trimmed := RegExReplace( trimmed, "(?is)</html>.+", "</html>" )
      ; remove everyting up to the first <html> tag
      trimmed := RegExReplace( trimmed, "(?is)\A.*?<html>", "<html>" )
      ; insert character set
      trimmed := RegExReplace( trimmed, "(?ism)\A.*?^((?><html>\s*(?:<head>)?))(?!\s*<meta charset=)", "$1<meta charset=" . """" . "UTF-8" . """" . ">" )
      ; specific to EditPad Pro 8, delete if you don't need
      trimmed := RegExReplace( trimmed, "(?m)^\.syntax0 {", "body {" )
     }
   return trimmed
}


;-------------- PasteThis
PasteThis(text)
{
	tmp_clip := ClipboardAll
	Clipboard := ; start off empty to allow ClipWait to detect when text has arrived.
	Sleep 100   
	Clipboard := text
	ClipWait ; wait until clipboard contains data
	SafePaste()
	Clipboard := tmp_clip ; restore the clipboard
}

;--------------- SafePaste
SafePaste() {
    ; A way of pasting that only returns control when the paste is complete
    ; by jeeswg
    ; See https://www.autohotkey.com/boards/viewtopic.php?p=271514&sid=f898e28c59efcb6871c1dff403e663dd#p271517
    ; the point of this is that with a simple Ctrl + v, you don't know when the pasting is complete,
    ; so if you immediately reload the Clipboard, the new text may end up getting pasted...
	
	ControlGetFocus, vCtlClassNN, A 
	ControlGet, hCtl, Hwnd,, % vCtlClassNN, A 
	SendMessage, 0x302,,,, % "ahk_id " hCtl ;WM_PASTE := 0x302 
}


