<#
MVP of SCript for checking if a particular KB is installed on a list of Servers
#>

$HotfixID = "KBXXXX <--ID of KB"

$ServersList = Get-Content "Path to a txt file wth Servers names"

ForEach ($Computer in $ServersList) 
{
Get-HotFix -ComputerName $Computer |where {$_.HotFixID -Match $HotfixID}|select @{n="Computer";e={$Computer}},HotFixID,InstalledOn
}
