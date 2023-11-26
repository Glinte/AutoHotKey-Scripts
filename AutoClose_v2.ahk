; #Warn VarUnset, Off ; Enable warnings to assist with detecting common errors.

SetTimer(close_inactive_Opera_window, 1000)  ; 1 second timer

close_inactive_Opera_window()
{
    time := 0
    If WinActive("ahk_exe opera.exe")
    {
        time := 0
        return
    }

    time++ ; checks the number in the variable "time" and increases it by 1 every 1 second (in accordance with the timer period)
    If (time = 300)    ; 300 seconds
    {
        WinClose "ahk_exe opera.exe"
        time := 0     ; reset
    }
return
}

#HotIf MouseIsOver("ahk_exe opera.exe")
    ~WheelUp::time := 0
    ~WheelDown::time := 0 ; reset
#HotIf

MouseIsOver(WinTitle){
    Win := ""
    MouseGetPos(, , &Win, )
    return WinExist(WinTitle . " ahk_id " . Win)
}
