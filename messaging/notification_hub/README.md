# azurerm_notification_hub

Manages a Notification Hub within a Notification Hub Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name to use for this Notification Hub. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created. | 
| **apns_credential** | block | False | -  |  -  | A `apns_credential` block. | 
| **gcm_credential** | block | False | -  |  -  | A `gcm_credential` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

