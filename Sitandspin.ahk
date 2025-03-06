#Include VA.ahk
Sitnspin:
Sleep, 1250
GMD := VA_GetAudioMeter()
VA_IAudioMeterInformation_GetPeakValue(GMD, OVL)
if (OVL <= 0.000031){
	goto, Subspin1
} else {
	goto, Sitnspin
}
MsgBox, 1, ERROR, My Asshairs Smells Like Cheese Now

Subspin1:
Sleep, 1250
GMD := VA_GetAudioMeter()
VA_IAudioMeterInformation_GetPeakValue(GMD, OVL)
if (OVL <= 0.000031){
	goto, Subspin2
} else {
	goto, Sitnspin
}
MsgBox, 1, ERROR, My Ass Smells Like Cheese Now

Subspin2:
Sleep, 1250
GMD := VA_GetAudioMeter()
VA_IAudioMeterInformation_GetPeakValue(GMD, OVL)
if (OVL <= 0.000031){
	goto, Subspin3
} else {
	goto, Sitnspin
}
MsgBox, 1, ERROR, My Balls Smell Like Cheese Now

Subspin3:
Sleep, 1250
GMD := VA_GetAudioMeter()
VA_IAudioMeterInformation_GetPeakValue(GMD, OVL)
if (OVL <= 0.000031){
	return
} else {
	goto, Sitnspin
}
MsgBox, 1, ERROR, My Dick Smells Like Cheese Now