#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
#SingleInstance Ignore

SetTimer, close_inactive_Opera_window, 1000 ; 1 second timer
return

    close_inactive_Opera_window:
If !WinActive("ahk_exe opera.exe")
    time++ ; checks the number in the variable "time" and increases it by 1 every 1 second (in accordance with the timer period)
else
    time := 0     ; reset
If (time = 300)    ; 300 seconds
{
    WinClose, ahk_exe opera.exe
    time := 0     ; reset
}
return

#If MouseIsOver("ahk_exe opera.exe")

    ~WheelUp::
    ~WheelDown::
        time := 0 ; reset
    return

#If

MouseIsOver(WinTitle){
    MouseGetPos,,, Win
    return WinExist(WinTitle . " ahk_id " . Win)
}