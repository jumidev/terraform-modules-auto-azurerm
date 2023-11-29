# azurerm_monitor_alert_processing_rule_action_group

Manages an Alert Processing Rule which apply action group.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.add_action_group_ids** | string | True | -  |  Specifies a list of Action Group IDs. | 
| **var.name** | string | True | -  |  The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created. | 
| **var.scopes** | list | True | -  |  A list of resource IDs which will be the target of alert processing rule. | 
| **var.condition** | block | False | -  |  A `condition` block. | 
| **var.description** | string | False | -  |  Specifies a description for the Alert Processing Rule. | 
| **var.enabled** | bool | False | `True`  |  Should the Alert Processing Rule be enabled? Defaults to `true`. | 
| **var.schedule** | block | False | -  |  A `schedule` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Alert Processing Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **add_action_group_ids** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **scopes** | list  | - | 
| **condition** | block  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **schedule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Alert Processing Rule. | 