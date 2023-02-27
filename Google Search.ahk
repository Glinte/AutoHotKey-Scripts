#NoEnv
#Warn
SendMode Input

#IfWInActive ahk_exe Firefox.exe

^g::
  Send +{F10}
  Sleep 100
  Send s
Return