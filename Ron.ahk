Fetch:
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") ;makes the internet exsist
whr.Open("GET", "https://ron-swanson-quotes.herokuapp.com/v2/quotes", true) ;pens a request
whr.Send()
whr.WaitForResponse()
RAW := whr.ResponseText ;saves operators anwser
Fix1 := StrReplace(RAW, chr(91)chr(34))
Fix2 := StrReplace(Fix1, chr(34)chr(93))
Clipboard := Fix2