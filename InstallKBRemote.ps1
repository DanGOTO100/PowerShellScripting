<#
MVP of SCript - Note it uses PSWindowsupdate module - for remotely updating a KBXXXXX missing in a list of identified servers list (Server1, Server2, etc..) where is it missing. 
#>

Invoke-WUJob -ComputerName "list of Server1, Server2, Server3"  -Script {ipmo PSWindowsUpdate; Install-WindowsUpdate -KBArticleID KBXXXXX  -AcceptAll | Out-File "JobOutput.log" } -RunNow -Confirm:$false -Verbose -ErrorAction Ignore
