# azurerm_monitor_diagnostic_setting

Manages a Diagnostic Setting for an existing Resource.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | False | -  |  Specifies the name of the Event Hub where Diagnostics Data should be sent. | 
| **var.eventhub_authorization_rule_id** | string | False | -  |  Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. | 
| **var.log** | block | False | -  |  One or more `log` blocks. | 
| **var.enabled_log** | block | False | -  |  One or more `enabled_log` blocks. | 
| **var.log_analytics_workspace_id** | string | False | -  |  Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | 
| **var.metric** | block | False | -  |  One or more `metric` blocks. | 
| **var.storage_account_id** | string | False | -  |  The ID of the Storage Account where logs should be sent. | 
| **var.log_analytics_destination_type** | string | False | `AzureDiagnostics`, `Dedicated`  |  Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table. | 
| **var.partner_solution_id** | string | False | -  |  The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **target_resource_id** | string  | - | 
| **eventhub_name** | string  | - | 
| **eventhub_authorization_rule_id** | string  | - | 
| **log** | block  | - | 
| **enabled_log** | block  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **metric** | block  | - | 
| **storage_account_id** | string  | - | 
| **log_analytics_destination_type** | string  | - | 
| **partner_solution_id** | string  | - | 
| **id** | string  | The ID of the Diagnostic Setting. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_diagnostic_setting" 
}

inputs = {
   name = "name of monitor_diagnostic_setting" 
   target_resource_id = "target_resource_id of monitor_diagnostic_setting" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```