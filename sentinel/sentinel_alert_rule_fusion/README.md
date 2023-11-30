# azurerm_sentinel_alert_rule_fusion

Manages a Sentinel Fusion Alert Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_alert_rule_fusion" 
}

inputs = {
   name = "name of sentinel_alert_rule_fusion" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_alert_rule_fusion" 
   alert_rule_template_guid = "alert_rule_template_guid of sentinel_alert_rule_fusion" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **var.alert_rule_template_guid** | string | True | -  |  The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **var.enabled** | bool | False | `True`  |  Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`. | 
| **var.source** | block | False | -  |  One or more `source` blocks. | 

### `source` block structure

>`name` (string): (REQUIRED) The name of the Fusion source signal. Refer to Fusion alert rule template for supported values.
>`enabled` (bool): Whether this source signal is enabled or disabled in Fusion detection? Defaults to 'true'.
>`sub_type` (block): One or more 'sub_type' blocks.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Fusion Alert Rule. | 

Additionally, all variables are provided as outputs.
