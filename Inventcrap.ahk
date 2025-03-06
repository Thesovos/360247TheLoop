Fetch:
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") ;makes the internet exsist
whr.Open("GET", "https://itsthisforthat.com/api.php?text", true) ;pens a request
whr.Send()
whr.WaitForResponse()
RAW := whr.ResponseText ;saves operators anwser
Clipboard := RAW
