# azurerm_sentinel_alert_rule_fusion

Manages a Sentinel Fusion Alert Rule.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **var.alert_rule_template_guid** | string | True | -  |  The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **var.enabled** | bool | False | `True`  |  Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`. | 
| **var.source** | block | False | -  |  One or more `source` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **alert_rule_template_guid** | string  | - | 
| **enabled** | bool  | - | 
| **source** | block  | - | 
| **id** | string  | The ID of the Sentinel Fusion Alert Rule. | 

## Example minimal hclt

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