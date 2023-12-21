# azurerm_log_analytics_data_export_rule

Manages a Log Analytics Data Export Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_data_export_rule"   
}

inputs = {
   name = "The name of the Log Analytics Data Export Rule"   
   resource_group_name = "${resource_group}"   
   # workspace_resource_id → set in component_inputs
   destination_resource_id = "The destination resource ID"   
   table_names = "A list of table names to export to the destination resource, for example: `["Hea..."   
}

component_inputs = {
   workspace_resource_id = "path/to/log_analytics_data_export_rule_component:id"   
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
| **name** | string |  The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **workspace_resource_id** | string |  The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **destination_resource_id** | string |  The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically. | 
| **table_names** | list |  A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **enabled** | bool |  `False`  |  `true`, `false`  |  Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Data Export Rule. | 
| **export_rule_id** | string | No  | The ID of the created Data Export Rule. | 

Additionally, all variables are provided as outputs.
