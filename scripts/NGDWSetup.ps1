param(
  [Parameter(Mandatory=$true)]
  [string] $HostName
  [Parameter(Mandatory=$true)]
  [string] $ChocoInstall
)

$command = ".\ChocolateyInstall.ps1" -ChocoInstall $ChocoInstall
Invoke-Expression $command

$command = ".\ConfigureWinRM.ps1" -HostName $HostName
Invoke-Expression $command
