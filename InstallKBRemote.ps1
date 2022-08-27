<#
MVP of SCript for remotely updating a KBXXXXX missing in a list of identified servers list (Server1, Server2, etc..) where is it missing. Note it uses PSWindowsupdate module
#>

Invoke-WUJob -ComputerName Server1, Server2, Server3 -Script {ipmo PSWindowsUpdate; Install-WindowsUpdate -KBArticleID KBXXXXX  -AcceptAll | Out-File "./test2.log" } -RunNow -Confirm:$false -Verbose -ErrorAction Ignore
