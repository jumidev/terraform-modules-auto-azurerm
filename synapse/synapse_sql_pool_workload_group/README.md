# azurerm_synapse_sql_pool_workload_group

Manages a Synapse SQL Pool Workload Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_sql_pool_workload_group"   
}

inputs = {
   name = "The name which should be used for this Synapse SQL Pool Workload Group..."   
   # sql_pool_id → set in component_inputs
   max_resource_percent = "The workload group cap percentage resource"   
   min_resource_percent = "The workload group minimum percentage resource"   
}

component_inputs = {
   sql_pool_id = "path/to/synapse_sql_pool_component:id"   
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
| **name** | string |  The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **sql_pool_id** | string |  The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created. | 
| **max_resource_percent** | string |  The workload group cap percentage resource. | 
| **min_resource_percent** | string |  The workload group minimum percentage resource. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **importance** | string |  `normal`  |  The workload group importance level. Defaults to `normal`. | 
| **max_resource_percent_per_request** | string |  `3`  |  The workload group request maximum grant percentage. Defaults to `3`. | 
| **min_resource_percent_per_request** | string |  -  |  The workload group request minimum grant percentage. | 
| **query_execution_timeout_in_seconds** | number |  -  |  The workload group query execution timeout. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **query_execution_timeout_in_seconds** | number | No  | The workload group query execution timeout. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Synapse SQL Pool Workload Group. | 

Additionally, all variables are provided as outputs.
