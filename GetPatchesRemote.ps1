<#
MVP of SCript for listing installed Patches on remote Windows Servers. Writting ouput to a CSV for post.processing
#>

Clear-Host


## Load the server names list (from inventory - please use the right path in line below)
$serversList = Get-Content "Path to a txt file wth Servers names"

## Output from command in CSV 
$outinfo = "Path where to store the csv file with the list of Patches.csv"

## Main loop
ForEach ( $server in $serversList )
 {



    Get-WmiObject Win32_QuickFixEngineering -ComputerName $server |
         Where-Object { $_.InstalledOn -gt (Get-Date).AddMonths(-3) } |
         Select-Object -Property PSComputerName, __PATH, Description, InstalledOn, HotFixID, InstalledBy |
         Export-Csv -Path $outinfo -Append 
  }
  
