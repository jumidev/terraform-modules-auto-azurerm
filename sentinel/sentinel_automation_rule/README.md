# azurerm_sentinel_automation_rule

Manages a Sentinel Automation Rule.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  |  The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created. | 
| **var.display_name** | string | True | -  |  -  |  The display name which should be used for this Sentinel Automation Rule. | 
| **var.order** | string | True | -  |  `1`, `1000`  |  The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`. | 
| **var.action_incident** | block | False | -  |  -  |  One or more `action_incident` blocks. | 
| **var.action_playbook** | block | False | -  |  -  |  One or more `action_playbook` blocks. | 
| **var.condition** | block | False | -  |  -  |  (Optional / **Deprecated** ) One or more `condition` blocks. | 
| **var.condition_json** | list | False | -  |  -  |  A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic). | 
| **var.enabled** | bool | False | `True`  |  -  |  Whether this Sentinel Automation Rule is enabled? Defaults to `true`. | 
| **var.expiration** | string | False | -  |  -  |  The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled. | 
| **var.triggers_on** | string | False | `Incidents`  |  `Alerts`, `Incidents`  |  Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`. | 
| **var.triggers_when** | string | False | `Created`  |  `Created`, `Updated`  |  Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **display_name** | string  | - | 
| **order** | string  | - | 
| **action_incident** | block  | - | 
| **action_playbook** | block  | - | 
| **condition** | block  | - | 
| **condition_json** | list  | - | 
| **enabled** | bool  | - | 
| **expiration** | string  | - | 
| **triggers_on** | string  | - | 
| **triggers_when** | string  | - | 
| **id** | string  | The ID of the Sentinel Automation Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_automation_rule" 
}

inputs = {
   name = "name of sentinel_automation_rule" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_automation_rule" 
   display_name = "display_name of sentinel_automation_rule" 
   order = "order of sentinel_automation_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```