# azurerm_monitor_aad_diagnostic_setting

Manages an Azure Active Directory Diagnostic Setting for Azure Monitor.!> **Authentication** The API for this resource does not support service principal authentication. This resource can only be used with Azure CLI authentication.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_aad_diagnostic_setting"   
}

inputs = {
   name = "The name which should be used for this Monitor Azure Active Directory Diagnostic..."   
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
| **name** | string |  The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **log** | [block](#log-block-structure) |  One or more `log` blocks. | 
| **enabled_log** | [block](#enabled_log-block-structure) |  One or more `enabled_log` blocks. | 
| **eventhub_authorization_rule_id** | string |  Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created. | 
| **eventhub_name** | string |  Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created. | 
| **log_analytics_workspace_id** | string |  Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | 
| **storage_account_id** | string |  The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created. | 

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | False | Is this Retention Policy enabled? Defaults to 'false'. |
| `days` | number | No | 0 | The number of days for which this Retention Policy should apply. Defaults to '0'. |

### `log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | Yes | - | The log category for the Azure Active Directory Diagnostic. |
| `retention_policy` | [block](#retention_policy-block-structure) | Yes | - | A 'retention_policy' block. |
| `enabled` | bool | No | True | Is this Diagnostic Log enabled? Defaults to 'true'. |

### `enabled_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | Yes | - | The log category for the Azure Active Directory Diagnostic. |
| `retention_policy` | [block](#retention_policy-block-structure) | Yes | - | A 'retention_policy' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Azure Active Directory Diagnostic Setting. | 

Additionally, all variables are provided as outputs.
