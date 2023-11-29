# azurerm_log_analytics_linked_service

Manages a Log Analytics Linked Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created. | 
| **var.workspace_id** | string | True | The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource. | 
| **var.read_access_id** | string | False | The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource. | 
| **var.write_access_id** | string | False | The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **workspace_id** | string  | - | 
| **read_access_id** | string  | - | 
| **write_access_id** | string  | - | 
| **id** | string  | The Log Analytics Linked Service ID. | 
| **name** | string  | The generated name of the Linked Service. The format for this attribute is always `<workspace name>/<linked service type>`(e.g. `workspace1/Automation` or `workspace1/Cluster`) | 