# azurerm_synapse_spark_pool

Manages a Synapse Spark Pool.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created. | 
| **var.synapse_workspace_id** | string | True | -  |  -  |  The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created. | 
| **var.node_size_family** | string | True | -  |  `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, `None`  |  The kind of nodes that the Spark Pool provides. Possible values are `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, and `None`. | 
| **var.node_size** | string | True | -  |  `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge`, `XXXLarge`  |  The level of node in the Spark Pool. Possible values are `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge` and `XXXLarge`. | 
| **var.node_count** | int | False | -  |  -  |  The number of nodes in the Spark Pool. Exactly one of `node_count` or `auto_scale` must be specified. | 
| **var.auto_scale** | block | False | -  |  -  |  An `auto_scale` block. Exactly one of `node_count` or `auto_scale` must be specified. | 
| **var.auto_pause** | block | False | -  |  -  |  An `auto_pause` block. | 
| **var.cache_size** | string | False | -  |  -  |  The cache size in the Spark Pool. | 
| **var.compute_isolation_enabled** | bool | False | `False`  |  -  |  Indicates whether compute isolation is enabled or not. Defaults to `false`. | 
| **var.dynamic_executor_allocation_enabled** | bool | False | `False`  |  -  |  Indicates whether Dynamic Executor Allocation is enabled or not. Defaults to `false`. | 
| **var.min_executors** | int | False | -  |  -  |  The minimum number of executors allocated only when `dynamic_executor_allocation_enabled` set to `true`. | 
| **var.max_executors** | int | False | -  |  -  |  The maximum number of executors allocated only when `dynamic_executor_allocation_enabled` set to `true`. | 
| **var.library_requirement** | block | False | -  |  -  |  A `library_requirement` block. | 
| **var.session_level_packages_enabled** | bool | False | `False`  |  -  |  Indicates whether session level packages are enabled or not. Defaults to `false`. | 
| **var.spark_config** | block | False | -  |  -  |  A `spark_config` block. | 
| **var.spark_log_folder** | string | False | `/logs`  |  -  |  The default folder where Spark logs will be written. Defaults to `/logs`. | 
| **var.spark_events_folder** | string | False | `/events`  |  -  |  The Spark events folder. Defaults to `/events`. | 
| **var.spark_version** | string | False | `2.4`  |  `2.4`, `3.1`, `3.2`, `3.3`  |  The Apache Spark version. Possible values are `2.4` , `3.1` , `3.2` and `3.3`. Defaults to `2.4`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Synapse Spark Pool. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **node_size_family** | string  | - | 
| **node_size** | string  | - | 
| **node_count** | int  | - | 
| **auto_scale** | block  | - | 
| **auto_pause** | block  | - | 
| **cache_size** | string  | - | 
| **compute_isolation_enabled** | bool  | - | 
| **dynamic_executor_allocation_enabled** | bool  | - | 
| **min_executors** | int  | - | 
| **max_executors** | int  | - | 
| **library_requirement** | block  | - | 
| **session_level_packages_enabled** | bool  | - | 
| **spark_config** | block  | - | 
| **spark_log_folder** | string  | - | 
| **spark_events_folder** | string  | - | 
| **spark_version** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Synapse Spark Pool. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_spark_pool" 
}

inputs = {
   name = "name of synapse_spark_pool" 
   synapse_workspace_id = "synapse_workspace_id of synapse_spark_pool" 
   node_size_family = "node_size_family of synapse_spark_pool" 
   node_size = "node_size of synapse_spark_pool" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```