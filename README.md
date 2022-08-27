# PowerShellScripting Repo
Created on 26th and 28th August 2022, it is a collection of tested PowerShell Scripts to manage Windows servers.

In the collection currently I have:

- Script to get patches' status from a list of remote machines and collect output in a csv file for better managining
- Script to check for a specific KB on a remote machine
- Script to install specific detected missing KB on a set of remote machines

More to be added.

## Sample of the CSV outout:

"PSComputerName","__PATH","Description","InstalledOn","HotFixID","InstalledBy"

"XXXXXXXXXXXXXX","\\xxxxxxxxxxxxxxxxx:Win32_QuickFixEngineering.HotFixID=""KB5013641"",ServicePackInEffect=""""","Update","8/6/2022 12:00:00 AM","KB5013641",""
"XXXXXXXXXXXXXX","\\xxxxxxxxxxxxxxxxx:Win32_QuickFixEngineering.HotFixID=""KB5016623"",ServicePackInEffect=""""","Security Update","8/6/2022 12:00:00 AM","KB5016623",""
"XXXXXXXXXXXXXX","\\xxxxxxxxxxxxxxxxx:Win32_QuickFixEngineering.HotFixID=""KB5015896"",ServicePackInEffect=""""","Update","8/6/2022 12:00:00 AM","KB5015896",""
