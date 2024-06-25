# azurerm_workloads_sap_discovery_virtual_instance



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "workloads/workloads_sap_discovery_virtual_instance"   
}
inputs = {
   name = "Specifies the name of the SAP Discovery Virtual Instance..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   central_server_virtual_machine_id = "The ID of the Virtual Machine of the Central Server..."   
   environment = "The environment type for the SAP Discovery Virtual Instance..."   
   sap_product = "The SAP Product type for the SAP Discovery Virtual Instance..."   
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
| **name** | string |  -  |  Specifies the name of the SAP Discovery Virtual Instance. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created. | 
| **central_server_virtual_machine_id** | string |  -  |  The ID of the Virtual Machine of the Central Server. Changing this forces a new resource to be created. | 
| **environment** | string |  `NonProd`, `Prod`  |  The environment type for the SAP Discovery Virtual Instance. Possible values are `NonProd` and `Prod`. Changing this forces a new resource to be created. | 
| **sap_product** | string |  `ECC`, `Other`, `S4HANA`  |  The SAP Product type for the SAP Discovery Virtual Instance. Possible values are `ECC`, `Other` and `S4HANA`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **managed_resource_group_name** | string |  The name of the managed Resource Group for the SAP Discovery Virtual Instance. Changing this forces a new resource to be created. | 
| **managed_storage_account_name** | string |  The name of the custom Storage Account created by the service in the managed Resource Group. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags which should be assigned to the SAP Discovery Virtual Instance. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of Managed Service Identity that should be configured on this SAP Discovery Virtual Instance. The only possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | A list of User Assigned Managed Identity IDs to be assigned to this SAP Discovery Virtual Instance. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **identity_ids** | list | No  | A list of User Assigned Managed Identity IDs to be assigned to this SAP Discovery Virtual Instance. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SAP Discovery Virtual Instance. | 

Additionally, all variables are provided as outputs.
