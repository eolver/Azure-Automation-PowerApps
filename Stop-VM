$Conn = Get-AutomationConnection -Name AzureRunAsConnection
Connect-AzureRmAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

#define the resource parameters

$rg="<resoucegroupname>"
$vms=Get-AzureRmVM -ResourceGroupName $rg
$vm.name

#for every VM in the resource group start it up

foreach($vm in $vms)
{
Stop-AzureRmVM -Name $vm.name $vm.resourcegroupname -Force 
}   

Write-Output "Completed action Turn off VMs"
