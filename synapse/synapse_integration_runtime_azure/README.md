# azurerm_synapse_integration_runtime_azure

Manages a Synapse Azure Integration Runtime.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **var.synapse_workspace_id** | string | True | -  |  -  |  The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **var.compute_type** | string | False | `General`  |  `General`, `ComputeOptimized`, `MemoryOptimized`  |  Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`. | 
| **var.core_count** | string | False | `8`  |  `8`, `16`, `32`, `48`, `80`, `144`, `272`  |  Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`. | 
| **var.description** | string | False | -  |  -  |  Integration runtime description. | 
| **var.time_to_live_min** | string | False | `0`  |  -  |  Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **location** | string  | - | 
| **compute_type** | string  | - | 
| **core_count** | string  | - | 
| **description** | string  | - | 
| **time_to_live_min** | string  | - | 
| **id** | string  | The ID of the Synapse Azure Integration Runtime. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_integration_runtime_azure" 
}

inputs = {
   name = "name of synapse_integration_runtime_azure" 
   synapse_workspace_id = "synapse_workspace_id of synapse_integration_runtime_azure" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```