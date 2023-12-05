# azurerm_sentinel_alert_rule_fusion

Manages a Sentinel Fusion Alert Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_alert_rule_fusion"   
}

inputs = {
   name = "The name which should be used for this Sentinel Fusion Alert Rule..."   
   # log_analytics_workspace_id → set in tfstate_inputs
   alert_rule_template_guid = "The GUID of the alert rule template which is used for this Sentinel Fusion Alert..."   
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **name** | string |  The name which should be used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **alert_rule_template_guid** | string |  The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`. | 
| **source** | [block](#source-block-structure) |  -  |  One or more `source` blocks. | 

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Fusion source signal. Refer to Fusion alert rule template for supported values. |
| `enabled` | bool | No | True | Whether this source signal is enabled or disabled in Fusion detection? Defaults to 'true'. |
| `sub_type` | [block](#sub_type-block-structure) | No | - | One or more 'sub_type' blocks. |

### `sub_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the source subtype under a given source signal in Fusion detection. Refer to Fusion alert rule template for supported values. |
| `enabled` | bool | No | True | Whether this source subtype under source signal is enabled or disabled in Fusion detection. Defaults to 'true'. |
| `severities_allowed` | string | Yes | - | A list of severities that are enabled for this source subtype consumed in Fusion detection. Possible values for each element are 'High', 'Medium', 'Low', 'Informational'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Fusion Alert Rule. | 

Additionally, all variables are provided as outputs.
