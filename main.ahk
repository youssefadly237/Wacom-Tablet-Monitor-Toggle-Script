#Space:: ; Windows+Space to toggle mapping
Run, "C:\Program Files\Tablet\Wacom\Professional_CPL.exe" ; that is in my case it depends on the location of installation
WinWait, Wacom Tablet Properties
WinActivate, Wacom Tablet Properties
Click, 105, 100
Sleep, 60 ; you can adjust this if your computer is slow and it the message box always returns "text"
ControlGetText, OutputVar, ComboBox2, Wacom Tablet Properties

if (OutputVar = "Monitor 1") {
    ControlFocus, ComboBox2, Wacom Tablet Properties
    Send, {Down}
    Send, {Enter}
} else if (OutputVar = "Monitor 2") {
    ControlFocus, ComboBox2, Wacom Tablet Properties
    Send, {Up}
    Send, {Enter}
} else {
    MsgBox, Unknown text: %OutputVar%
}

WinClose, Wacom Tablet Properties

return
