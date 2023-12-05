# azurerm_log_analytics_solution

Manages a Log Analytics (formally Operational Insights) Solution.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_solution"   
}

inputs = {
   solution_name = "Specifies the name of the solution to be deployed"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   workspace_resource_id = "The full resource ID of the Log Analytics workspace with which the solution will..."   
   # workspace_name → set in tfstate_inputs
   plan = {
      publisher = "..."      
      product = "..."      
   }
   
}

tfstate_inputs = {
   workspace_name = "path/to/log_analytics_workspace_component:name"   
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
| **solution_name** | string |  Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **workspace_resource_id** | string |  The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **workspace_name** | string |  The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created. | 
| **plan** | [block](#plan-block-structure) |  A `plan` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | The publisher of the solution. For example 'Microsoft'. Changing this forces a new resource to be created. |
| `product` | string | Yes | - | The product name of the solution. For example 'OMSGallery/Containers'. Changing this forces a new resource to be created. |
| `promotion_code` | string | No | - | A promotion code to be used with the solution. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
