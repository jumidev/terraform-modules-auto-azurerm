# azurerm_netapp_account

Manages a NetApp Account.~> **NOTE:** Azure allows only one active directory can be joined to a single subscription at a time for NetApp Account.## NetApp Account Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_netapp_account" "example" {name                = "example-netapp"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationactive_directory {username            = "aduser"password            = "aduserpwd"smb_server_name     = "SMBSERVER"dns_servers         = ["1.2.3.4"]domain              = "westcentralus.com"organizational_unit = "OU=FirstLevel"}}```

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the NetApp Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **active_directory** | block | False | -  |  -  | A `active_directory` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

