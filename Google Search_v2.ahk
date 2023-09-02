#Warn

#HotIf WinActive("ahk_exe firefox.exe")
^g::
{
  Send "+{F10}"
  Sleep 100
  Send "s"
}
