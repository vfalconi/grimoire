param(
    [Parameter()]
    [String]$name
)

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
	Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
	exit;
}

Get-NetAdapter | Where-Object {$_.Name -Match "$name"} | Set-NetIPInterface -InterfaceMetric 6000
