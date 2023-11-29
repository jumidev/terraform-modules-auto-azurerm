# azurerm_notification_hub_authorization_rule

Manages an Authorization Rule associated with a Notification Hub within a Notification Hub Namespace.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name to use for this Authorization Rule. Changing this forces a new resource to be created. | 
| **var.notification_hub_name** | string | True | -  |  -  | The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | -  |  -  | The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **var.manage** | bool | False | `False`  |  -  | Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  -  | Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`. | 
| **var.listen** | bool | False | `False`  |  -  | Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **notification_hub_name** | string  | - | 
| **namespace_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **manage** | bool  | - | 
| **send** | bool  | - | 
| **listen** | bool  | - | 
| **id** | string  | The ID of the Authorization Rule. | 
| **primary_access_key** | string  | The Primary Access Key associated with this Authorization Rule. | 
| **secondary_access_key** | string  | The Secondary Access Key associated with this Authorization Rule. | 