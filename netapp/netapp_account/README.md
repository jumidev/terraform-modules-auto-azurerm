# azurerm_netapp_account

Manages a NetApp Account.~> **NOTE:** Azure allows only one active directory can be joined to a single subscription at a time for NetApp Account.## NetApp Account Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_netapp_account" "example" {name                = "example-netapp"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationactive_directory {username            = "aduser"password            = "aduserpwd"smb_server_name     = "SMBSERVER"dns_servers         = ["1.2.3.4"]domain              = "westcentralus.com"organizational_unit = "OU=FirstLevel"}}```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the NetApp Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.active_directory** | block | False | A `active_directory` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **active_directory** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the NetApp Account. | 