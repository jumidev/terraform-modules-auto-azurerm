# azurerm_monitor_diagnostic_setting

Manages a Diagnostic Setting for an existing Resource.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string  The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.eventhub_name** | string  -  |  Specifies the name of the Event Hub where Diagnostics Data should be sent. | 
| **var.eventhub_authorization_rule_id** | string  -  |  Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. | 
| **var.log** | block  -  |  One or more `log` blocks. | 
| **var.enabled_log** | block  -  |  One or more `enabled_log` blocks. | 
| **var.log_analytics_workspace_id** | string  -  |  Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | 
| **var.metric** | block  -  |  One or more `metric` blocks. | 
| **var.storage_account_id** | string  -  |  The ID of the Storage Account where logs should be sent. | 
| **var.log_analytics_destination_type** | string  `AzureDiagnostics`, `Dedicated`  |  Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table. | 
| **var.partner_solution_id** | string  -  |  The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview). | 

### `log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | No | - | The name of a Diagnostic Log Category for this Resource. |
| `category_group` | string | No | - | The name of a Diagnostic Log Category Group for this Resource. |
| `retention_policy` | block | No | - | A 'retention_policy' block. |
| `enabled` | bool | No | True | Is this Diagnostic Log enabled? Defaults to 'true'. |

### `enabled_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | No | - | The name of a Diagnostic Log Category for this Resource. |
| `category_group` | string | No | - | The name of a Diagnostic Log Category Group for this Resource. |
| `retention_policy` | block | No | - | A 'retention_policy' block. |

### `metric` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `category` | string | Yes | - | The name of a Diagnostic Metric Category for this Resource. |
| `retention_policy` | block | No | - | A 'retention_policy' block. |
| `enabled` | bool | No | True | Is this Diagnostic Metric enabled? Defaults to 'true'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Diagnostic Setting. | 

Additionally, all variables are provided as outputs.
