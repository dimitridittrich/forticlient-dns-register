$nic01 = Get-NetAdapter -Name * | ?{$_.InterfaceDescription -like "*Fortinet*"}
if ($nic01.Status -eq "Up")
{
Write-Host "Interface VPN-SSL Fortigate está Up, setando todas as interfaces para não registrar DNS (com excecao das do proprio fortigate)"
Get-NetAdapter -Name * |?{$_.InterfaceDescription -notlike "*Fortinet*"} |?{$_.InterfaceDescription -notlike "*PPPoP*"} | Set-DNSClient -RegisterThisConnectionsAddress $False
Start-Sleep 30
ipconfig /registerdns
} else
{
Write-Host "Interface VPN-SSL Fortigate está Down, setando todas as interfaces para registrar DNS"
Get-NetAdapter -Name * |?{$_.InterfaceDescription -notlike "*Fortinet*"} |?{$_.InterfaceDescription -notlike "*PPPoP*"} | Set-DNSClient -RegisterThisConnectionsAddress $True
}