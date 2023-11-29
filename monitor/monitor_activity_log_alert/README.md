# azurerm_monitor_activity_log_alert

Manages an Activity Log Alert within Azure Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the activity log alert. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created. | 
| **scopes** | string | True | -  |  -  | The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account). | 
| **criteria** | block | True | -  |  -  | A `criteria` block. | 
| **action** | block | False | -  |  -  | One or more `action` blocks. | 
| **enabled** | bool | False | `True`  |  -  | Should this Activity Log Alert be enabled? Defaults to `true`. | 
| **description** | string | False | -  |  -  | The description of this activity log alert. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

