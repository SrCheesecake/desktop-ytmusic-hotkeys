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
;when pressing RCtrl and Numpad1, likes the song
>^Numpad1::
{
    if(WinExist(YTID))
    {
        if(WinActive(YTID))
        {
            MouseGetPos(&X,&Y)
            ImageSearch(&I,&J,A_ScreenWidth/2,700*A_ScreenHeight/768,A_ScreenWidth-288*A_ScreenWidth/1360,A_ScreenHeight,"*30 *TransBlack like.png")
            sleep(300)
            MouseClick("L",I+5,J+5,1,0)
            sleep(100)
            MouseMove(X,Y,0)
        }
        else
        {
            WinActivate(YTID)
            MouseGetPos(&X,&Y)
            Sleep(200)
            ImageSearch(&I,&J,A_ScreenWidth/2,700*A_ScreenHeight/768,A_ScreenWidth-288*A_ScreenWidth/1360,A_ScreenHeight,"*30 *TransBlack like.png")
            sleep(300)
            MouseClick("L",I+5,J+5,1,0)
            sleep(100)
            MouseMove(X,Y,0)
            WinMinimize(YTID)
        }
    }
}
;when pressing RCtrl and Numpad2, likes the song and adds it to playlist (must choose the playlist manually the first time)
>^Numpad2::
{
    if(WinExist(YTID))
    {
        if(WinActive(YTID))
        {
            MouseGetPos(&X,&Y)
            if(ImageSearch(&I,&J,A_ScreenWidth/2,700*A_ScreenHeight/768,A_ScreenWidth-288*A_ScreenWidth/1360,A_ScreenHeight,"*30 *TransBlack like.png"))
            {
                MouseClick("L",I+5,J+5,1,0)
                sleep(100)
                MouseClick("L",I+45,J+5,1,0)
                sleep(250)
                ImageSearch(&A,&B,A_ScreenWidth*0.6,0,A_ScreenWidth,A_ScreenHeight,"*30 *TransBlack add.png")
                sleep(100)
                MouseClick("L",A+5,B+5,1,0)
                sleep(100)
                MouseMove(X,Y,0)
            }
            else if(ImageSearch(&I,&J,A_ScreenWidth/2,700*A_ScreenHeight/768,A_ScreenWidth-288*A_ScreenWidth/1360,A_ScreenHeight,"*30 *TransBlack liked.png"))
            {
                sleep(100)
                MouseClick("L",I+45,J+5,1,0)
                sleep(250)
                ImageSearch(&A,&B,A_ScreenWidth*0.6,0,A_ScreenWidth,A_ScreenHeight,"*30 *TransBlack add.png")
                sleep(100)
                MouseClick("L",A+5,B+5,1,0)
                sleep(100)
                MouseMove(X,Y,0)
            }
        }
        else
        {
            MouseGetPos(&X,&Y)
            WinActivate(YTID)
            sleep(400)
            if(ImageSearch(&I,&J,A_ScreenWidth/2,700*A_ScreenHeight/768,A_ScreenWidth-288*A_ScreenWidth/1360,A_ScreenHeight,"*30 *TransBlack like.png"))
            {
                MouseClick("L",I+5,J+5,1,0)
                sleep(100)
                MouseClick("L",I+45,J+5,1,0)
                sleep(250)
                ImageSearch(&A,&B,A_ScreenWidth*0.6,0,A_ScreenWidth,A_ScreenHeight,"*30 *TransBlack add.png")
                sleep(100)
                MouseClick("L",A+5,B+5,1,0)
                sleep(100)
                MouseMove(X,Y,0)
            }
            else if(ImageSearch(&I,&J,A_ScreenWidth/2,700*A_ScreenHeight/768,A_ScreenWidth-288*A_ScreenWidth/1360,A_ScreenHeight,"*30 *TransBlack liked.png"))
            {
                MouseClick("L",I+45,J+5,1,0)
                sleep(250)
                ImageSearch(&A,&B,A_ScreenWidth*0.6,0,A_ScreenWidth,A_ScreenHeight,"*30 *TransBlack add.png")
                sleep(100)
                MouseClick("L",A+5,B+5,1,0)
                sleep(100)
                MouseMove(X,Y,0)
            }
            WinMinimize(YTID)
        }
    }
}
