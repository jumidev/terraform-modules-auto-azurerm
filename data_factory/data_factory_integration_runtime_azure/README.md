# azurerm_data_factory_integration_runtime_azure

Manages a Data Factory Azure Integration Runtime.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_integration_runtime_azure" 
}

inputs = {
   name = "name of data_factory_integration_runtime_azure" 
   data_factory_id = "data_factory_id of data_factory_integration_runtime_azure" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  |  Integration runtime description. | 
| **var.cleanup_enabled** | bool | False | `True`  |  -  |  Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as `false`. Default is `true`. | 
| **var.compute_type** | string | False | `General`  |  `General`, `ComputeOptimized`, `MemoryOptimized`  |  Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`. | 
| **var.core_count** | string | False | `8`  |  `8`, `16`, `32`, `48`, `80`, `144`, `272`  |  Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`. | 
| **var.time_to_live_min** | string | False | `0`  |  -  |  Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`. | 
| **var.virtual_network_enabled** | bool | False | -  |  -  |  Is Integration Runtime compute provisioned within Managed Virtual Network? Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
