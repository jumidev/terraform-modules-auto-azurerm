# azurerm_log_analytics_linked_service

Manages a Log Analytics Linked Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created. | 
| **workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource. | 
| **read_access_id** | string | False | -  |  -  | The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource. | 
| **write_access_id** | string | False | -  |  -  | The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource. | 

