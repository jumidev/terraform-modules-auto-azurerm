# azurerm_synapse_spark_pool

Manages a Synapse Spark Pool.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created. | 
| **synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created. | 
| **node_size_family** | string | True | -  |  `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, `None`  | The kind of nodes that the Spark Pool provides. Possible values are `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, and `None`. | 
| **node_size** | string | True | -  |  `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge`, `XXXLarge`  | The level of node in the Spark Pool. Possible values are `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge` and `XXXLarge`. | 
| **node_count** | int | False | -  |  -  | The number of nodes in the Spark Pool. Exactly one of `node_count` or `auto_scale` must be specified. | 
| **auto_scale** | block | False | -  |  -  | An `auto_scale` block. Exactly one of `node_count` or `auto_scale` must be specified. | 
| **auto_pause** | block | False | -  |  -  | An `auto_pause` block. | 
| **cache_size** | string | False | -  |  -  | The cache size in the Spark Pool. | 
| **compute_isolation_enabled** | bool | False | `False`  |  -  | Indicates whether compute isolation is enabled or not. Defaults to `false`. | 
| **dynamic_executor_allocation_enabled** | bool | False | `False`  |  -  | Indicates whether Dynamic Executor Allocation is enabled or not. Defaults to `false`. | 
| **min_executors** | int | False | -  |  -  | The minimum number of executors allocated only when `dynamic_executor_allocation_enabled` set to `true`. | 
| **max_executors** | int | False | -  |  -  | The maximum number of executors allocated only when `dynamic_executor_allocation_enabled` set to `true`. | 
| **library_requirement** | block | False | -  |  -  | A `library_requirement` block. | 
| **session_level_packages_enabled** | bool | False | `False`  |  -  | Indicates whether session level packages are enabled or not. Defaults to `false`. | 
| **spark_config** | block | False | -  |  -  | A `spark_config` block. | 
| **spark_log_folder** | string | False | `/logs`  |  -  | The default folder where Spark logs will be written. Defaults to `/logs`. | 
| **spark_events_folder** | string | False | `/events`  |  -  | The Spark events folder. Defaults to `/events`. | 
| **spark_version** | string | False | `2.4`  |  `2.4`, `3.1`, `3.2`, `3.3`  | The Apache Spark version. Possible values are `2.4` , `3.1` , `3.2` and `3.3`. Defaults to `2.4`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Synapse Spark Pool. | 

