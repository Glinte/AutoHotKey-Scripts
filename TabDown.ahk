#IfWinActive ahk_exe firefox.exe
$Tab::
WinGetTitle, title, A
If InStr(title, "Google Search") or InStr(title, "Youtube")
{
    Send {Down}
}
else ; user is not in Google Search
{
    Send {Tab}
    Return
}
Return