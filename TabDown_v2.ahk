#HotIf WinActive("ahk_exe firefox.exe")
$Tab::
{
    title := WinGetTitle("A")
    If InStr(title, "Google") or InStr(title, "Youtube")
    {
        Send "{Down}"
    }
    else ; user is not in Google Search
    {
        Send "{Tab}"
        Return
    }
    Return
}
#HotIf
