# azurerm_netapp_snapshot

Manages a NetApp Snapshot.## NetApp Snapshot Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_virtual_network" "example" {name                = "example-virtualnetwork"address_space       = ["10.0.0.0/16"]location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_subnet" "example" {name                 = "example-subnet"resource_group_name  = azurerm_resource_group.example.namevirtual_network_name = azurerm_virtual_network.example.nameaddress_prefixes     = ["10.0.2.0/24"]delegation {name = "netapp"service_delegation {name    = "Microsoft.Netapp/volumes"actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]}}}resource "azurerm_netapp_account" "example" {name                = "example-netappaccount"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_pool" "example" {name                = "example-netapppool"account_name        = azurerm_netapp_account.example.namelocation            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameservice_level       = "Premium"size_in_tb          = "4"}resource "azurerm_netapp_volume" "example" {name                = "example-netappvolume"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaccount_name        = azurerm_netapp_account.example.namepool_name           = azurerm_netapp_pool.example.namevolume_path         = "my-unique-file-path"service_level       = "Premium"subnet_id           = azurerm_subnet.example.idstorage_quota_in_gb = "100"}resource "azurerm_netapp_snapshot" "example" {name                = "example-netappsnapshot"account_name        = azurerm_netapp_account.example.namepool_name           = azurerm_netapp_pool.example.namevolume_name         = azurerm_netapp_volume.example.namelocation            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}```

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "netapp/netapp_snapshot" 
}

inputs = {
   name = "name of netapp_snapshot" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of netapp_snapshot" 
   pool_name = "pool_name of netapp_snapshot" 
   volume_name = "volume_name of netapp_snapshot" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  The name of the NetApp Snapshot. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created. | 
| **var.account_name** | string  The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **var.pool_name** | string  The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created. | 
| **var.volume_name** | string  The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Snapshot. | 

Additionally, all variables are provided as outputs.
