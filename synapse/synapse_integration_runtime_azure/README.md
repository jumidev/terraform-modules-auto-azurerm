# azurerm_synapse_integration_runtime_azure

Manages a Synapse Azure Integration Runtime.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **synapse_workspace_id** | string | True | -  |  -  | The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created. | 
| **compute_type** | string | False | `General`  |  `General`, `ComputeOptimized`, `MemoryOptimized`  | Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`. | 
| **core_count** | string | False | `8`  |  `8`, `16`, `32`, `48`, `80`, `144`, `272`  | Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`. | 
| **description** | string | False | -  |  -  | Integration runtime description. | 
| **time_to_live_min** | string | False | `0`  |  -  | Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`. | 

