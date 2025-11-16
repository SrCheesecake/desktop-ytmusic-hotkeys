/*
These hotkeys are for more comfort, doing their action and putting you back where you were.
The script is on default ahk settings and the desktop yt music app is on default sizing "view -> actual size".
The sleep()'s are based on my pc's performance, specially those before Mouse functions, feel free to modify them.
Please enjoy, and contact me if you want to or have any ideas.
*/
;declaring global variable of the yt id
global YTID := "ahk_exe YouTube Music.exe"
;declaring global variables of different coords on a 16:9 screen ratio
global I1:= A_ScreenWidth*26/1360
global I2:= A_ScreenWidth*138/1360
global J1:= A_ScreenHeight*728/768
global J2:= A_ScreenHeight*360/768
;when pressing RCtrl and Numpad0, mutes song
>^Numpad0::
{
    if(WinExist(YTID))
    {
        if(WinActive(YTID))
        {
            Send("m")
        }
        else
        {
            WinActivate(YTID)
            Sleep(200)
            Send("m")
            Sleep(200)
            WinMinimize(YTID)
        }
    }
}
;when pressing RCtrl and Space, pauses/plays song
>^Space::
{
    if(WinExist(YTID))
    {
        WinActivate(YTID)
        Sleep(200)
        Send(" ")
        Sleep(200)
        WinMinimize(YTID)
    }
}
;when pressing RCtrl and the Right arrow, skips song
>^Right::
{
    if(WinExist(YTID))
    {
        if(WinActive(YTID))
        {
            MouseGetPos(&X,&Y)
            MouseClick("L",I2,J1,1,0)
            Sleep(200)
            MouseMove(X,Y,0)
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate(YTID)
            Sleep(200)
            MouseClick("L",I2,J1,1,0)
            Sleep(200)
            WinMinimize(YTID)
            Sleep(200)
            MouseMove(X,Y,0)
        }
    }
}
;when pressing RCtrl and the Left arrow, rewinds song
>^Left::
{
    if(WinExist(YTID))
    {
        if(WinActive(YTID))
        {
            MouseGetPos(&X,&Y)
            Sleep(200)
            MouseClick("L",I1,J1,1,0)
            Sleep(200)
            MouseMove(X,Y,0)
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate(YTID)
            Sleep(200)
            MouseClick("L",I1,J1,1,0)
            Sleep(200)
            WinMinimize(YTID)
            Sleep(200)
            MouseMove(X,Y,0)
        }
    }
}
;when pressing RCtrl and the Up arrow, increases volume by 5%
>^Up::
{
    if(WinExist(YTID))
    {
        Sleep(100)
        if(WinActive(YTID))
        {
            loop(5)
            {
                Send('{Up}')
                Sleep(50)
            }
        }
        else
        {
            WinActivate(YTID)
            Sleep(200)
            loop(5)
            {
                Send('{Up}')
                Sleep(50)
            }
            WinMinimize(YTID)
        }
    }
}
;when pressing RCtrl and the Down arrow, decreases volume by 5%
>^Down::
{
    if(WinExist(YTID))
    {
        Sleep(100)
        if(WinActive(YTID))
        {
            loop(5)
            {
                Send('{Down}')
                Sleep(50)
            }
        }
        else
        {
            WinActivate(YTID)
            Sleep(200)
            loop(5)
            {
                Send('{Down}')
                Sleep(50)
            }
            WinMinimize(YTID)
        }
    }
}
