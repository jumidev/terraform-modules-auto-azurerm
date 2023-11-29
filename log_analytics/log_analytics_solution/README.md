# azurerm_log_analytics_solution

Manages a Log Analytics (formally Operational Insights) Solution.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **solution_name** | string | True | -  |  -  | Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **workspace_resource_id** | string | True | -  |  -  | The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **workspace_name** | string | True | -  |  -  | The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **plan** | block | True | -  |  -  | A `plan` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

