# azurerm_data_factory_integration_runtime_azure

Manages a Data Factory Azure Integration Runtime.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | Integration runtime description. | 
| **cleanup_enabled** | bool | False | `True`  |  -  | Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as `false`. Default is `true`. | 
| **compute_type** | string | False | `General`  |  `General`, `ComputeOptimized`, `MemoryOptimized`  | Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`. | 
| **core_count** | string | False | `8`  |  `8`, `16`, `32`, `48`, `80`, `144`, `272`  | Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`. | 
| **time_to_live_min** | string | False | `0`  |  -  | Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`. | 
| **virtual_network_enabled** | bool | False | -  |  -  | Is Integration Runtime compute provisioned within Managed Virtual Network? Changing this forces a new resource to be created. | 

