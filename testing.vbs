Set objShell = CreateObject("WScript.Shell")
Set exec = objShell.Exec("powershell -executionpolicy bypass -noninteractive -file .\test.ps1")
exec.StdIn.Close()
WScript.Echo exec.StdOut.ReadAll()
Set exec = Nothing
Set objShell = Nothing
WScript.Quit 0
