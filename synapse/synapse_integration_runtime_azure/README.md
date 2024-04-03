# azurerm_synapse_integration_runtime_azure



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_integration_runtime_azure"   
}
inputs = {
   name = "The name which should be used for this Synapse Azure Integration Runtime..."   
   # synapse_workspace_id → set in component_inputs
   location = "${location}"   
}
component_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **name** | string |  The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **synapse_workspace_id** | string |  The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **location** | string |  The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **compute_type** | string |  `General`  |  `General`, `ComputeOptimized`, `MemoryOptimized`  |  Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`. | 
| **core_count** | number |  `8`  |  `8`, `16`, `32`, `48`, `80`, `144`, `272`  |  Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`. | 
| **description** | string |  -  |  -  |  Integration runtime description. | 
| **time_to_live_min** | string |  `0`  |  -  |  Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **time_to_live_min** | string | No  | Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Synapse Azure Integration Runtime. | 

Additionally, all variables are provided as outputs.
