# azurerm_sentinel_alert_rule_threat_intelligence

Manages a Sentinel Threat Intelligence Alert Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_alert_rule_threat_intelligence"   
}

inputs = {
   name = "name of sentinel_alert_rule_threat_intelligence"   
   # log_analytics_workspace_id → set in tfstate_inputs
   alert_rule_template_guid = "alert_rule_template_guid of sentinel_alert_rule_threat_intelligence"   
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
| **name** | string |  The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created. | 
| **alert_rule_template_guid** | string |  The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Whether the Threat Intelligence Alert rule enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel NRT Alert Rule. | 

Additionally, all variables are provided as outputs.
