# azurerm_synapse_spark_pool

Manages a Synapse Spark Pool.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_spark_pool"   
}

inputs = {
   name = "The name which should be used for this Synapse Spark Pool..."   
   # synapse_workspace_id → set in tfstate_inputs
   node_size_family = "The kind of nodes that the Spark Pool provides"   
   node_size = "The level of node in the Spark Pool"   
}

tfstate_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **name** | string |  -  |  The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created. | 
| **synapse_workspace_id** | string |  -  |  The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created. | 
| **node_size_family** | string |  `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, `None`  |  The kind of nodes that the Spark Pool provides. Possible values are `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, and `None`. | 
| **node_size** | string |  `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge`, `XXXLarge`  |  The level of node in the Spark Pool. Possible values are `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge` and `XXXLarge`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **node_count** | number |  -  |  -  |  The number of nodes in the Spark Pool. Exactly one of `node_count` or `auto_scale` must be specified. | 
| **auto_scale** | [block](#auto_scale-block-structure) |  -  |  -  |  An `auto_scale` block. Exactly one of `node_count` or `auto_scale` must be specified. | 
| **auto_pause** | [block](#auto_pause-block-structure) |  -  |  -  |  An `auto_pause` block. | 
| **cache_size** | string |  -  |  -  |  The cache size in the Spark Pool. | 
| **compute_isolation_enabled** | bool |  `False`  |  -  |  Indicates whether compute isolation is enabled or not. Defaults to `false`. | 
| **dynamic_executor_allocation_enabled** | bool |  `False`  |  -  |  Indicates whether Dynamic Executor Allocation is enabled or not. Defaults to `false`. | 
| **min_executors** | number |  -  |  -  |  The minimum number of executors allocated only when `dynamic_executor_allocation_enabled` set to `true`. | 
| **max_executors** | number |  -  |  -  |  The maximum number of executors allocated only when `dynamic_executor_allocation_enabled` set to `true`. | 
| **library_requirement** | [block](#library_requirement-block-structure) |  -  |  -  |  A `library_requirement` block. | 
| **session_level_packages_enabled** | bool |  `False`  |  -  |  Indicates whether session level packages are enabled or not. Defaults to `false`. | 
| **spark_config** | [block](#spark_config-block-structure) |  -  |  -  |  A `spark_config` block. | 
| **spark_log_folder** | string |  `/logs`  |  -  |  The default folder where Spark logs will be written. Defaults to `/logs`. | 
| **spark_events_folder** | string |  `/events`  |  -  |  The Spark events folder. Defaults to `/events`. | 
| **spark_version** | string |  `2.4`  |  `2.4`, `3.1`, `3.2`, `3.3`  |  The Apache Spark version. Possible values are `2.4` , `3.1` , `3.2` and `3.3`. Defaults to `2.4`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Synapse Spark Pool. | 

### `spark_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The contents of a spark configuration. |
| `filename` | string | Yes | - | The name of the file where the spark configuration 'content' will be stored. |

### `auto_scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_node_count` | number | Yes | - | The maximum number of nodes the Spark Pool can support. Must be between '3' and '200'. |
| `min_node_count` | number | Yes | - | The minimum number of nodes the Spark Pool can support. Must be between '3' and '200'. |

### `auto_pause` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `delay_in_minutes` | number | Yes | - | Number of minutes of idle time before the Spark Pool is automatically paused. Must be between '5' and '10080'. |

### `library_requirement` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The content of library requirements. |
| `filename` | string | Yes | - | The name of the library requirements file. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse Spark Pool. | 

Additionally, all variables are provided as outputs.
