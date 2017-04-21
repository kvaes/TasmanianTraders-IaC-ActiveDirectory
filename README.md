# Deploy a Domain Controller into an existing Azure VNET

This repository contains the following ;
* An ARM template which will deploy a domain controller to an existing VNET. This domain controller can be the first domain controller. In that case, a new forest/domain will be created. It can be an additional domain controller, which will then be linked to an existing domain. The configuration will be deployed by linking back to an (existing) Azure Automation Account ([example](https://github.com/kvaes/TasmanianTraders-IaC-AzureAutomationDSC)).
* A powershell script which allows you to update the VNET to point to the DCs in regards to DNS. 