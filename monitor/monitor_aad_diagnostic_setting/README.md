# azurerm_monitor_aad_diagnostic_setting

Manages an Azure Active Directory Diagnostic Setting for Azure Monitor.!> **Authentication** The API for this resource does not support service principal authentication. This resource can only be used with Azure CLI authentication.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created. | 
| **log** | block | False | -  |  -  | One or more `log` blocks. | 
| **enabled_log** | block | False | -  |  -  | One or more `enabled_log` blocks. | 
| **eventhub_authorization_rule_id** | string | False | -  |  -  | Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created. | 
| **eventhub_name** | string | False | -  |  -  | Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created. | 
| **log_analytics_workspace_id** | string | False | -  |  -  | Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | 
| **storage_account_id** | string | False | -  |  -  | The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created. | 

