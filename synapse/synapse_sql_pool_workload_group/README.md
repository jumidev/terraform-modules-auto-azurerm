# azurerm_synapse_sql_pool_workload_group

Manages a Synapse SQL Pool Workload Group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **var.sql_pool_id** | string | True | -  |  -  | The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **var.max_resource_percent** | string | True | -  |  -  | The workload group cap percentage resource. | 
| **var.min_resource_percent** | string | True | -  |  -  | The workload group minimum percentage resource. | 
| **var.importance** | string | False | `normal`  |  -  | The workload group importance level. Defaults to `normal`. | 
| **var.max_resource_percent_per_request** | string | False | `3`  |  -  | The workload group request maximum grant percentage. Defaults to `3`. | 
| **var.min_resource_percent_per_request** | string | False | -  |  -  | The workload group request minimum grant percentage. | 
| **var.query_execution_timeout_in_seconds** | int | False | -  |  -  | The workload group query execution timeout. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **sql_pool_id** | string  | - | 
| **max_resource_percent** | string  | - | 
| **min_resource_percent** | string  | - | 
| **importance** | string  | - | 
| **max_resource_percent_per_request** | string  | - | 
| **min_resource_percent_per_request** | string  | - | 
| **query_execution_timeout_in_seconds** | int  | - | 
| **id** | string  | The ID of the Synapse SQL Pool Workload Group. | 