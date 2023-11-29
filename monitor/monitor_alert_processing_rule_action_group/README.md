# azurerm_monitor_alert_processing_rule_action_group

Manages an Alert Processing Rule which apply action group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **add_action_group_ids** | string | True | -  |  -  | Specifies a list of Action Group IDs. | 
| **name** | string | True | -  |  -  | The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created. | 
| **scopes** | list | True | -  |  -  | A list of resource IDs which will be the target of alert processing rule. | 
| **condition** | block | False | -  |  -  | A `condition` block. | 
| **description** | string | False | -  |  -  | Specifies a description for the Alert Processing Rule. | 
| **enabled** | bool | False | `True`  |  -  | Should the Alert Processing Rule be enabled? Defaults to `true`. | 
| **schedule** | block | False | -  |  -  | A `schedule` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Alert Processing Rule. | 

