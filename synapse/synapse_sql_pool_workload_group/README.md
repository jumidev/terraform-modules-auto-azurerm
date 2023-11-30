# azurerm_synapse_sql_pool_workload_group

Manages a Synapse SQL Pool Workload Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_sql_pool_workload_group" 
}

inputs = {
   name = "name of synapse_sql_pool_workload_group" 
   sql_pool_id = "sql_pool_id of synapse_sql_pool_workload_group" 
   max_resource_percent = "max_resource_percent of synapse_sql_pool_workload_group" 
   min_resource_percent = "min_resource_percent of synapse_sql_pool_workload_group" 
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
| **var.name** | string |  The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **var.sql_pool_id** | string |  The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **var.max_resource_percent** | string |  The workload group cap percentage resource. | 
| **var.min_resource_percent** | string |  The workload group minimum percentage resource. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.importance** | string |  `normal`  |  The workload group importance level. Defaults to `normal`. | 
| **var.max_resource_percent_per_request** | string |  `3`  |  The workload group request maximum grant percentage. Defaults to `3`. | 
| **var.min_resource_percent_per_request** | string |  -  |  The workload group request minimum grant percentage. | 
| **var.query_execution_timeout_in_seconds** | int |  -  |  The workload group query execution timeout. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse SQL Pool Workload Group. | 

Additionally, all variables are provided as outputs.
