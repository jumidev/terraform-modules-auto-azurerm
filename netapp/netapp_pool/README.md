# azurerm_netapp_pool

Manages a Pool within a NetApp Account.## NetApp Pool Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_netapp_account" "example" {name                = "example-netappaccount"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_pool" "example" {name                = "example-netapppool"account_name        = azurerm_netapp_account.example.namelocation            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameservice_level       = "Premium"size_in_tb          = 4}```

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "netapp/netapp_pool" 
}

inputs = {
   name = "name of netapp_pool" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of netapp_pool" 
   location = "${location}" 
   service_level = "service_level of netapp_pool" 
   size_in_tb = "size_in_tb of netapp_pool" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the NetApp Pool. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.service_level** | string | True | `Premium`, `Standard`, `Ultra`  |  The service level of the file system. Valid values include `Premium`, `Standard`, or `Ultra`. Changing this forces a new resource to be created. | 
| **var.size_in_tb** | string | True | -  |  Provisioned size of the pool in TB. Value must be between `2` and `500`. | 
| **var.qos_type** | string | False | `Auto`, `Manual`  |  QoS Type of the pool. Valid values include `Auto` or `Manual`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Pool. | 

Additionally, all variables are provided as outputs.
