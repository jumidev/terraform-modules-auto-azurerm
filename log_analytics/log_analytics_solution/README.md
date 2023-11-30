# azurerm_log_analytics_solution

Manages a Log Analytics (formally Operational Insights) Solution.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_solution" 
}

inputs = {
   solution_name = "solution_name of log_analytics_solution" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   workspace_resource_id = "workspace_resource_id of log_analytics_solution" 
   workspace_name = "workspace_name of log_analytics_solution" 
   plan = "plan of log_analytics_solution" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.solution_name** | string | True | Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.workspace_resource_id** | string | True | The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **var.workspace_name** | string | True | The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **var.plan** | block | True | A `plan` block. | 
| `plan` block structure: || 
|   publisher (string): (REQUIRED) The publisher of the solution. For example 'Microsoft'. Changing this forces a new resource to be created. ||
|   product (string): (REQUIRED) The product name of the solution. For example 'OMSGallery/Containers'. Changing this forces a new resource to be created. ||
|   promotion_code (string): A promotion code to be used with the solution. Changing this forces a new resource to be created. ||
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
