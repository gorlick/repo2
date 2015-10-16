
PingStatus = Ping("njrdbrtl01")

	if PingStatus <> 1 then 
				msgbox "The ping was not successful"
	else 
				msgbox "The ping was successful"
	end if


Function Ping(sHostName)
	Dim objWMIService, colPings, objStatus
    Set objWMIService = GetObject("winmgmts:\\" & "." & "\root\cimv2")

	Set colPings = objWMIService.ExecQuery("Select * From Win32_PingStatus where Address = '" & sHostName & "'") 
    For Each objStatus in colPings
        If IsNull(objStatus.StatusCode) Or (objStatus.StatusCode <> 0) Then 
            Ping = 0
        Else
            Ping = 1
        End If
    Next 
End Function 