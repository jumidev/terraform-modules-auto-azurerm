# azurerm_sentinel_automation_rule

Manages a Sentinel Automation Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created. | 
| **display_name** | string | True | -  |  -  | The display name which should be used for this Sentinel Automation Rule. | 
| **order** | string | True | -  |  `1`, `1000`  | The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`. | 
| **action_incident** | block | False | -  |  -  | One or more `action_incident` blocks. | 
| **action_playbook** | block | False | -  |  -  | One or more `action_playbook` blocks. | 
| **condition** | block | False | -  |  -  | (Optional / **Deprecated** ) One or more `condition` blocks. | 
| **condition_json** | list | False | -  |  -  | A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic). | 
| **enabled** | bool | False | `True`  |  -  | Whether this Sentinel Automation Rule is enabled? Defaults to `true`. | 
| **expiration** | string | False | -  |  -  | The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled. | 
| **triggers_on** | string | False | `Incidents`  |  `Alerts`, `Incidents`  | Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`. | 
| **triggers_when** | string | False | `Created`  |  `Created`, `Updated`  | Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`. | 

