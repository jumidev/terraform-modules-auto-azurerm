# azurerm_log_analytics_saved_search

Manages a Log Analytics (formally Operational Insights) Saved Search.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_saved_search"   
}

inputs = {
   name = "name of log_analytics_saved_search"   
   # log_analytics_workspace_id → set in tfstate_inputs
   display_name = "display_name of log_analytics_saved_search"   
   category = "category of log_analytics_saved_search"   
   query = "query of log_analytics_saved_search"   
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **name** | string |  Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created. | 
| **log_analytics_workspace_id** | string |  Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created. | 
| **display_name** | string |  The name that Saved Search will be displayed as. Changing this forces a new resource to be created. | 
| **category** | string |  The category that the Saved Search will be listed under. Changing this forces a new resource to be created. | 
| **query** | string |  The query expression for the saved search. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **function_alias** | string |  The function alias if the query serves as a function. Changing this forces a new resource to be created. | 
| **function_parameters** | string |  The function parameters if the query serves as a function. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Log Analytics Saved Search ID. | 

Additionally, all variables are provided as outputs.
