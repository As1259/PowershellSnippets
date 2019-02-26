## <copyright>Andreas Schreiner 2019</copyright>
Param(
  [string]$ProcessName
)
(Get-WmiObject -Class Win32_Process | Where-Object {$_.ProcessName -eq $ProcessName}).GetOwner() | Format-Table Domain, User 
