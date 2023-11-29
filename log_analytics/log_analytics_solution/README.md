# azurerm_log_analytics_solution

Manages a Log Analytics (formally Operational Insights) Solution.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.solution_name** | string | True | Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.workspace_resource_id** | string | True | The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **var.workspace_name** | string | True | The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **var.plan** | block | True | A `plan` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **solution_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **workspace_resource_id** | string  | - | 
| **workspace_name** | string  | - | 
| **plan** | block  | - | 
| **tags** | map  | - | 