# azurerm_monitor_aad_diagnostic_setting

Manages an Azure Active Directory Diagnostic Setting for Azure Monitor.!> **Authentication** The API for this resource does not support service principal authentication. This resource can only be used with Azure CLI authentication.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_aad_diagnostic_setting" 
}

inputs = {
   name = "name of monitor_aad_diagnostic_setting" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created. | 
| **var.log** | block | False | One or more `log` blocks. | 
| **var.enabled_log** | block | False | One or more `enabled_log` blocks. | 
| **var.eventhub_authorization_rule_id** | string | False | Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | False | Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created. | 
| **var.log_analytics_workspace_id** | string | False | Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | 
| **var.storage_account_id** | string | False | The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created. | 

### `log` block structure

>`category` (string): (REQUIRED) The log category for the Azure Active Directory Diagnostic.
>`retention_policy` (block): (REQUIRED) A 'retention_policy' block.
>`enabled` (bool): Is this Diagnostic Log enabled? Defaults to 'true'.

### `enabled_log` block structure

>`category` (string): (REQUIRED) The log category for the Azure Active Directory Diagnostic.
>`retention_policy` (block): (REQUIRED) A 'retention_policy' block.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Azure Active Directory Diagnostic Setting. | 

Additionally, all variables are provided as outputs.
