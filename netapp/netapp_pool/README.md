# azurerm_netapp_pool

Manages a Pool within a NetApp Account.## NetApp Pool Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_netapp_account" "example" {name                = "example-netappaccount"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_pool" "example" {name                = "example-netapppool"account_name        = azurerm_netapp_account.example.namelocation            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameservice_level       = "Premium"size_in_tb          = 4}```

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the NetApp Pool. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **service_level** | string | True | -  |  `Premium`, `Standard`, `Ultra`  | The service level of the file system. Valid values include `Premium`, `Standard`, or `Ultra`. Changing this forces a new resource to be created. | 
| **size_in_tb** | string | True | -  |  -  | Provisioned size of the pool in TB. Value must be between `2` and `500`. | 
| **qos_type** | string | False | -  |  `Auto`, `Manual`  | QoS Type of the pool. Valid values include `Auto` or `Manual`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

