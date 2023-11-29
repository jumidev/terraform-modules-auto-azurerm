# azurerm_log_analytics_saved_search

Manages a Log Analytics (formally Operational Insights) Saved Search.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Log Analytics Saved Search. Changing this forces a new resource to be created. | 
| **var.log_analytics_workspace_id** | string | True | Specifies the ID of the Log Analytics Workspace that the Saved Search will be associated with. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | The name that Saved Search will be displayed as. Changing this forces a new resource to be created. | 
| **var.category** | string | True | The category that the Saved Search will be listed under. Changing this forces a new resource to be created. | 
| **var.query** | string | True | The query expression for the saved search. Changing this forces a new resource to be created. | 
| **var.function_alias** | string | False | The function alias if the query serves as a function. Changing this forces a new resource to be created. | 
| **var.function_parameters** | string | False | The function parameters if the query serves as a function. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Logs Analytics Saved Search. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **display_name** | string  | - | 
| **category** | string  | - | 
| **query** | string  | - | 
| **function_alias** | string  | - | 
| **function_parameters** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The Log Analytics Saved Search ID. | 