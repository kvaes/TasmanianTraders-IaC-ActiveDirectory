$rgName = "your resource group name"
$vnetName = ""
$dnsPrimary = ""
$dnsSecondary = ""

$vnet = Get-AzureRmVirtualNetwork -ResourceGroupName $rgName -name $vnetName
$vnet.DhcpOptions.DnsServers = $dnsPrimary 
$vnet.DhcpOptions.DnsServers += $dnsSecondary 
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet