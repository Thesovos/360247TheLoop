Random, Seed, 100000000, 400000000
Random,, %Seed%
Random, RNG, 1, 10467
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
Test=https://www.animenewsnetwork.com/encyclopedia/reports.xml?id=155&nskip=%RNG%&nlist=1
whr.Open("GET", Test, true)
whr.Send()
whr.WaitForResponse()
Ani := whr.ResponseText
Dud := RegExMatch(Ani, ">([a-zA-Z].*?)<", Plat)
Plat := StrReplace(Plat, "  ")
Plat := StrReplace(Plat, ">")
Plat:= StrReplace(Plat, "<")
Dud += 1
Dud2 := RegExMatch(Ani, ">([a-zA-Z].*?)<", thing, Dud)
thing := StrReplace(thing, "  ")
thing := StrReplace(thing, ">")
RAW := StrReplace(thing, "<")
Clipboard := RAW