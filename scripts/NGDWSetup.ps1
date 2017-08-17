param(
  [Parameter(Mandatory=$true)]
  [string] $HostName
  [Parameter(Mandatory=$true)]
  [string] $ChocoPackages
)

$command = ".\ChocolateyInstall.ps1" -chocoPackages $ChocoPackages
Invoke-Expression $command

$command = ".\ConfigureWinRM.ps1" -HostName $HostName
Invoke-Expression $command
