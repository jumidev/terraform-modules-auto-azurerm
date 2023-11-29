# azurerm_monitor_activity_log_alert

Manages an Activity Log Alert within Azure Monitor.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the activity log alert. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created. | 
| **var.scopes** | string | True | -  |  -  | The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account). | 
| **var.criteria** | block | True | -  |  -  | A `criteria` block. | 
| **var.action** | block | False | -  |  -  | One or more `action` blocks. | 
| **var.enabled** | bool | False | `True`  |  -  | Should this Activity Log Alert be enabled? Defaults to `true`. | 
| **var.description** | string | False | -  |  -  | The description of this activity log alert. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **scopes** | string  | - | 
| **criteria** | block  | - | 
| **action** | block  | - | 
| **enabled** | bool  | - | 
| **description** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the activity log alert. | 