# azurerm_netapp_snapshot

Manages a NetApp Snapshot.## NetApp Snapshot Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_virtual_network" "example" {name                = "example-virtualnetwork"address_space       = ["10.0.0.0/16"]location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_subnet" "example" {name                 = "example-subnet"resource_group_name  = azurerm_resource_group.example.namevirtual_network_name = azurerm_virtual_network.example.nameaddress_prefixes     = ["10.0.2.0/24"]delegation {name = "netapp"service_delegation {name    = "Microsoft.Netapp/volumes"actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]}}}resource "azurerm_netapp_account" "example" {name                = "example-netappaccount"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_pool" "example" {name                = "example-netapppool"account_name        = azurerm_netapp_account.example.namelocation            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameservice_level       = "Premium"size_in_tb          = "4"}resource "azurerm_netapp_volume" "example" {name                = "example-netappvolume"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaccount_name        = azurerm_netapp_account.example.namepool_name           = azurerm_netapp_pool.example.namevolume_path         = "my-unique-file-path"service_level       = "Premium"subnet_id           = azurerm_subnet.example.idstorage_quota_in_gb = "100"}resource "azurerm_netapp_snapshot" "example" {name                = "example-netappsnapshot"account_name        = azurerm_netapp_account.example.namepool_name           = azurerm_netapp_pool.example.namevolume_name         = azurerm_netapp_volume.example.namelocation            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the NetApp Snapshot. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **var.pool_name** | string | True | The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created. | 
| **var.volume_name** | string | True | The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **pool_name** | string  | - | 
| **volume_name** | string  | - | 
| **location** | string  | - | 
| **id** | string  | The ID of the NetApp Snapshot. | 