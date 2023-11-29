# azurerm_log_analytics_data_export_rule

Manages a Log Analytics Data Export Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **workspace_resource_id** | string | True | -  |  -  | The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **destination_resource_id** | string | True | -  |  -  | The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically. | 
| **table_names** | list | True | -  |  -  | A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`. | 
| **enabled** | bool | False | `False`  |  `true`, `false`  | Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`. | 

