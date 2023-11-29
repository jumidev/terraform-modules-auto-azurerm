# azurerm_monitor_diagnostic_setting

Manages a Diagnostic Setting for an existing Resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created. | 
| **eventhub_name** | string | False | -  |  -  | Specifies the name of the Event Hub where Diagnostics Data should be sent. | 
| **eventhub_authorization_rule_id** | string | False | -  |  -  | Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. | 
| **log** | block | False | -  |  -  | One or more `log` blocks. | 
| **enabled_log** | block | False | -  |  -  | One or more `enabled_log` blocks. | 
| **log_analytics_workspace_id** | string | False | -  |  -  | Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | 
| **metric** | block | False | -  |  -  | One or more `metric` blocks. | 
| **storage_account_id** | string | False | -  |  -  | The ID of the Storage Account where logs should be sent. | 
| **log_analytics_destination_type** | string | False | -  |  `AzureDiagnostics`, `Dedicated`  | Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table. | 
| **partner_solution_id** | string | False | -  |  -  | The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview). | 

