/*
These hotkeys are for more comfort, doing their action and putting you back where you were.
The script is on default ahk settings and the desktop yt music app is on default sizing "view -> actual size".
The sleep()'s are based on my pc's performance, specially those before Mouse functions, feel free to modify them.
Please enjoy, and contact me if you want to or have any ideas.
*/

;declaring global variables of different coords on a 16:9 screen ratio
global I1:=A_ScreenWidth*26/1360
global I2:=A_ScreenWidth*138/1360
global I3:=A_ScreenWidth*500/1360
global J1:=A_ScreenHeight*728/768
global J2:=A_ScreenHeight*360/768
;when pressing RCtrl and Numpad0, mutes song
>^Numpad0::
{
    if(WinExist("YouTube Music"))
    {
        if(WinActive("YouTube Music"))
        {
            Send("m")
        }
        else
        {
            WinActivate("YouTube Music")
            Sleep(200)
            Send("m")
            Sleep(200)
            WinMinimize("YouTube Music")
            Sleep(200)
            MouseClick()
        }
    }
}
;when pressing RCtrl and Space, pauses/plays song
>^Space::
{
    if(WinExist("YouTube Music"))
    {
        if(WinActive("YouTube Music"))
        {
            Send(" ")
        }
        else
        {
        WinActivate("YouTube Music")
        Sleep(200)
        Send(" ")
        Sleep(200)
        WinMinimize("YouTube Music")
        Sleep(200)
        MouseClick()
        }
    }
}
;when pressing RCtrl and the Right arrow, skips song
>^Right::
{
    if(WinExist("YouTube Music"))
    {
        if(WinActive("YouTube Music"))
        {
            MouseGetPos(&X,&Y)
            MouseClick("L",I2,J1,1,0)
            Sleep(200)
            MouseMove(X,Y,0)
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate("YouTube Music")
            Sleep(200)
            MouseClick("L",I2,J1,1,0)
            Sleep(200)
            WinMinimize("YouTube Music")
            Sleep(400)
            MouseMove(X,Y,0)
        }
    }
}
;when pressing RCtrl and the Left arrow, rewinds song
>^Left::
{
    if(WinExist("YouTube Music"))
    {
        if(WinActive("YouTube Music"))
        {
            MouseGetPos(&X,&Y)
            Sleep(200)
            MouseClick("L",I1,J1,1,0)
            Sleep(400)
            MouseMove(X,Y,0)
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate("YouTube Music")
            Sleep(200)
            MouseClick("L",I1,J1,1,0)
            Sleep(200)
            WinMinimize("YouTube Music")
            Sleep(400)
            MouseMove(X,Y,0)
        }
    }
}
;when pressing RCtrl and the Up arrow, increases volume by 5%
>^Up::
{
    if(WinExist("YouTube Music"))
    {
        if(WinActive("Youtube Music"))
        {
            MouseGetPos(&X,&Y)
            Sleep(200)
            MouseClick("WheelUp",I3,J2,1,0)
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(400)
            MouseMove(X,Y,0)
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate("YouTube Music")
            Sleep(200)
            MouseClick("WheelUp",I3,J2,1,0)
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(50)
            MouseClick("WheelUp")
            Sleep(200)
            WinMinimize("YouTube Music")
            Sleep(400)
            MouseMove(X,Y,0)
        }
    }
}
;when pressing RCtrl and the Down arrow, decreases volume by 5%
>^Down::
{
    if(WinExist("YouTube Music"))
    {
        if(WinActive("Youtube Music"))
        {
            MouseGetPos(&X,&Y)
            Sleep(200)
            MouseClick("WheelDown",I3,J2,1,0)
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(200)
            MouseMove(X,Y,0)
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate("YouTube Music")
            Sleep(200)
            MouseClick("WheelDown",I3,J2,1,0)
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(50)
            MouseClick("WheelDown")
            Sleep(200)
            WinMinimize("YouTube Music")
            Sleep(400)
            MouseMove(X,Y,0)
        }
    }
}
