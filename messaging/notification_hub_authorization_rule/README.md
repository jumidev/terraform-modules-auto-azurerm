# azurerm_notification_hub_authorization_rule

Manages an Authorization Rule associated with a Notification Hub within a Notification Hub Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name to use for this Authorization Rule. Changing this forces a new resource to be created. | 
| **notification_hub_name** | string | True | -  |  -  | The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **manage** | bool | False | `False`  |  -  | Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`. | 
| **listen** | bool | False | `False`  |  -  | Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`. | 

