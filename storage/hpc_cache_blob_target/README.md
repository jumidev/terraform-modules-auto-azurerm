# azurerm_hpc_cache_blob_target



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/hpc_cache_blob_target"   
}

inputs = {
   cache_name = "The name HPC Cache, which the HPC Cache Blob Target will be added to..."   
   name = "The name of the HPC Cache Blob Target"   
   resource_group_name = "${resource_group}"   
   namespace_path = "The client-facing file path of the HPC Cache Blob Target..."   
   # storage_container_id → set in component_inputs
}

component_inputs = {
   storage_container_id = "path/to/storage_container_component:id"   
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
| **cache_name** | string |  The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created. | 
| **name** | string |  The name of the HPC Cache Blob Target. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created. | 
| **namespace_path** | string |  The client-facing file path of the HPC Cache Blob Target. | 
| **storage_container_id** | string |  The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created. -> **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azurerm_storage_container` Data Source/Resource as `resource_manager_id`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **access_policy_name** | string |  `default`  |  The name of the access policy applied to this target. Defaults to `default`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **access_policy_name** | string | No  | The name of the access policy applied to this target. Defaults to `default`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the HPC Cache Blob Target. | 

Additionally, all variables are provided as outputs.
