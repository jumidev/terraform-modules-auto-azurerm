# azurerm_synapse_sql_pool_workload_group

Manages a Synapse SQL Pool Workload Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **sql_pool_id** | string | True | -  |  -  | The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **max_resource_percent** | string | True | -  |  -  | The workload group cap percentage resource. | 
| **min_resource_percent** | string | True | -  |  -  | The workload group minimum percentage resource. | 
| **importance** | string | False | `normal`  |  -  | The workload group importance level. Defaults to `normal`. | 
| **max_resource_percent_per_request** | string | False | `3`  |  -  | The workload group request maximum grant percentage. Defaults to `3`. | 
| **min_resource_percent_per_request** | string | False | -  |  -  | The workload group request minimum grant percentage. | 
| **query_execution_timeout_in_seconds** | int | False | -  |  -  | The workload group query execution timeout. | 

