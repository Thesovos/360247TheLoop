#Include VA.ahk
#Persistent
#SingleInstance
Run, %ComSpec%
Lop=0
Looop=0

Core:
If (Lop=0){
	gosub, Toggle
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=1){
	gosub, Anime
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=2){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=5){
	gosub, Ron
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=6){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=12){
	gosub, Vent
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=13){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=20){
	gosub, Prog
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=21){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=27){
	gosub, Poki
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=28){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=34){
	gosub, ExE
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=35){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=43){
	gosub, Daloop
	gosub, Play
	Lop+=1
	goto, Core
}
if (Lop=44){
	gosub, Phraser
	gosub, Speak
	gosub, Now
	gosub, Play
	Lop+=1
	goto, Core
}
If (Lop>=45){
	gosub, Phraser
	gosub, Speak
	gosub, Play
	looop += 1
	Lop=0
	goto, Core
}
gosub, Play
Lop+=1
goto, Core
MsgBox, 1, ERROR, It seems you screwed a royal pooch

Toggle:
gosub, Speak
WinActivate ahk_exe P2PClient.exe
WinWaitActive ahk_exe P2PClient.exe
WinActivate ahk_exe obs64.exe
WinWaitActive ahk_exe obs64.exe
sleep 2000
Click, 150, 420
sleep 5000
click, 150, 420
sleep 2000
return

Speak:
SpVoice := ComObjCreate("SAPI.SpVoice")
Voices := SpVoice.GetVoices()
VoicesText := ""
Loop, % Voices.Count() {
    VoicesText .= Voices.Item(A_Index - 1).GetDescription() "`n"
}
StringSplit, Voice, VoicesText, `n
Random, Speaker, 1, % Voices.Count()
SpVoice.Voice := Voices.Item(Speaker - 1)
SpVoice.Speak(Clipboard)
RunWait, %A_WorkingDir%\Sitandspin.exe
FileDelete, response.md
return

Namer:
List := Array("David","Hayley","Heather","Hazel","Helen","Zira")
Random,  Rand, 1, 6
name := List[Rand]
return

Play:
Random, Seed, 100000000, 400000000
Random,, %Seed%
Random, RNG, 1, 9665
Track =%RNG%
ComObjCreate("SAPI.SpVoice").Speak("Now playing track number"Track)
RunWait, %A_WorkingDir%\Sitandspin.exe
sound = J:\Music\Radio\Radio%Track%.mp3
SoundPlay, %sound%
RunWait, %A_WorkingDir%\Sitandspin.exe
return

Anime:
RunWait, %A_WorkingDir%\Anime.exe
Anime = %clipboard%
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest %Anime% >> response.md
send, ^v
send, {enter}
return

Vent:
RunWait, %A_WorkingDir%\Inventcrap.exe
Invent = %clipboard%
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest %Invent% >> response.md
send, ^v
send, {enter}
return

Prog:
RunWait, %A_WorkingDir%\coder.exe
coder = %clipboard%
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
 clipboard = ollama run tinydolphin:latest %coder% >> response.md
send, ^v
send, {enter}
return

Now:
Updated := ((A_TimeIdle/1000)/60)/60
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest Wake up %name% It's %A_dddd% %A_MMMM% %A_dd% at about %A_hour%:%A_Min%. Please inform our viewers that loop %looop% is about to start and that they will need to have the video portion of our stream up while we roll over to keep listening without interuptions here on three sixty twenty four seven the loop >> response.md
send, ^v
send, {enter}
return

Daloop:
Updated := ((A_TimeIdle/1000)/60)/60
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest Wake up %name% It's %A_dddd% %A_MMMM% %A_dd% at about %A_hour%:%A_Min%, this is the second to last song of loop#%looop%, please recap with our viewers about our segments, '%thing%', '%ron%', '%invent%', '%Prog%', '%Poki%', thank them for joining us for all the excitement and let them know that they will need to be watching the video portion of the stream when the loop ends for music to keep playing uninterupted >> response.md
send, ^v
send, {enter}
return

Ron:
RunWait, %A_WorkingDir%\Ron.exe
Ron = %clipboard%
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest %Ron% >> response.md
send, ^v
send, {enter}
return

Poki:
RunWait, %A_WorkingDir%\FightMe.exe
Poki = %clipboard%
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest %Poki% >> response.md
send, ^v
send, {enter}
return

ExE:
RunWait, %A_WorkingDir%\Excuse.exe
ExE = %clipboard%
winactivate ahk_exe cmd.exe
WinWaitActive, cmd.exe,, 1
if ErrorLevel {
	WinActivate ahk_exe %ComSpec%
	WinWaitActive, cmd.exe,, 1
}
Clipboard = ollama run tinydolphin:latest %ExE% >> response.md
send, ^v
send, {enter}
return

Phraser:
FileRead, Response, response.md
sleep, 500
Response := StrReplace(Response, "failed to get console mode for stdout: The handle is invalid.")
Response := StrReplace(Response, chr(42))
Response := SubStr(Response, 1, 2000)
sleep, 500
clipboard = %Response%
FileDelete, response.md
return
