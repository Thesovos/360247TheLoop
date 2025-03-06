random, Call, 1, 6
random, ID, 1, 719

IniRead, OutputVar, C:\Temp\myfile.ini, section2, key
IniRead, Called, pok.ini, Call, C%Call%
IniRead, Ided, pok.ini, ID, ID%ID%

;URL := "https://api.tcgdex.net/v2/en/cards/"Ided
;UrlDownloadToFile, %URL%, battle.dat
;FileRead, Stats, battle.dat

clipboard = %Called% %Ided%
