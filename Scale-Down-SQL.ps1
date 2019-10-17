$Conn = Get-AutomationConnection -Name 'AzureRunAsConnection'
Connect-AzureRmAccount -ServicePrincipal -Tenant $Conn.TenantID `
-ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint


#Resource group and Servername to be defined

$rg="<resourcegroupname>"
$svr="<SQL Server Name>"


#Change the Tier for the SQL Server

$Edition="Basic"
# Desired performance level {Basic, S0, S1, S2, P1, P2, P3}
$PerfLevel="Basic"

#For each Database if not the 'master' scale to the desired performance level

$dbs=Get-AzureRmSqlDatabase -servername $svr -resourcegroup $rg

foreach($db in $dbs)
{
if($db.DatabaseName -ne "master")
{ 
Set-AzurermSqlDatabase -ResourceGroupName $db.ResourceGroupName `
-ServerName $db.ServerName `
-DatabaseName $db.DatabaseName `
-Edition $Edition `
-RequestedServiceObjectiveName $PerfLevel
}
} 



    Write-Output "Scale Down  DB to Basic" 
