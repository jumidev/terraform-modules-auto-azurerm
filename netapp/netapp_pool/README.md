# azurerm_netapp_pool

Manages a Pool within a NetApp Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "netapp/netapp_pool"   
}

inputs = {
   name = "The name of the NetApp Pool"   
   resource_group_name = "${resource_group}"   
   account_name = "The name of the NetApp account in which the NetApp Pool should be created..."   
   location = "${location}"   
   service_level = "The service level of the file system"   
   size_in_tb = "Provisioned size of the pool in TB"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the NetApp Pool. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **account_name** | string |  -  |  The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **service_level** | string |  `Premium`, `Standard`, `Ultra`  |  The service level of the file system. Valid values include `Premium`, `Standard`, or `Ultra`. Changing this forces a new resource to be created. | 
| **size_in_tb** | string |  -  |  Provisioned size of the pool in TB. Value must be between `2` and `500`. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **qos_type** | string |  `Auto`, `Manual`  |  QoS Type of the pool. Valid values include `Auto` or `Manual`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Pool. | 

Additionally, all variables are provided as outputs.
