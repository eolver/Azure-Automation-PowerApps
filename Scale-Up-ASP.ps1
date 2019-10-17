$Conn = Get-AutomationConnection -Name 'AzureRunAsConnection'
Connect-AzureRmAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

#define the resource parameters
$rg="<resourcegroupname>"
$Tier="Standard"
$worker="Small"


$apps=Get-AzureRmAppServicePlan -ResourceGroupName $rg 

$apps

#for every App Service Plan in the ResourceGroup change to the defined Tier and workersize.

foreach($app in $apps)
{
$appname=$app.name

Set-AzureRmAppServicePlan -Name $appname -ResourceGroupName $rg -Tier $Tier -WorkerSize $worker
}
