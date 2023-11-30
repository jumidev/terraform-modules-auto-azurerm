# azurerm_log_analytics_data_export_rule

Manages a Log Analytics Data Export Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_data_export_rule" 
}

inputs = {
   name = "name of log_analytics_data_export_rule" 
   resource_group_name = "${resource_group}" 
   workspace_resource_id = "workspace_resource_id of log_analytics_data_export_rule" 
   destination_resource_id = "destination_resource_id of log_analytics_data_export_rule" 
   table_names = "table_names of log_analytics_data_export_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **var.workspace_resource_id** | string | True | -  |  -  |  The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **var.destination_resource_id** | string | True | -  |  -  |  The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically. | 
| **var.table_names** | list | True | -  |  -  |  A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`. | 
| **var.enabled** | bool | False | `False`  |  `true`, `false`  |  Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Data Export Rule. | 
| **export_rule_id** | string | No  | The ID of the created Data Export Rule. | 

Additionally, all variables are provided as outputs.
