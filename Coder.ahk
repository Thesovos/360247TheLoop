Fetch:
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") ;makes the internet exsist
whr.Open("GET", "https://programming-quotesapi.vercel.app/api/random", true) ;pens a request
whr.Send()
whr.WaitForResponse()
RAW := whr.ResponseText ;saves operators anwser
Fix1 := StrReplace(RAW, chr(123)chr(34))
Fix2 := StrReplace(Fix1, chr(34)chr(44)chr(34))
Fix3 := StrReplace(Fix2, chr(34)chr(58)chr(34))
Fix4 := StrReplace(Fix3, chr(34)chr(125))
Fix5 := StrReplace(Fix4, "Quote",chr(32))
Fix6 := StrReplace(Fix5, "Author")
Clipboard := Fix6