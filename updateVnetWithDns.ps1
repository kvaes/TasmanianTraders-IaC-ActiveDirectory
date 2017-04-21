$rgName = "{resourcegroupname}"
$vnetName = "{vnetname}"
$dnsPrimary = "{primarydns}"
$dnsSecondary = "{secondarydns}"

$vnet = Get-AzureRmVirtualNetwork -ResourceGroupName $rgName -name $vnetName
$vnet.DhcpOptions.DnsServers = $dnsPrimary 
$vnet.DhcpOptions.DnsServers += $dnsSecondary 
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet