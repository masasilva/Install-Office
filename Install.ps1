#Requires -RunAsAdministrator
#Requires -Version 5.1

if (Test-Path -Path $PSScriptRoot\Office\Data\*\stream.x64.x-none.dat)
{
	Start-Process -FilePath "$PSScriptRoot\setup.exe" -ArgumentList "/configure `"$PSScriptRoot\Config.xml`"" -Wait
}
else
{
	Write-Verbose -Message "There aren't neccessary Office files to install. Please do not move Install.ps1 from where all files are." -Verbose
}
