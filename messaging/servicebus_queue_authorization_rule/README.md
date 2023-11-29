# azurerm_servicebus_queue_authorization_rule

Manages an Authorization Rule for a ServiceBus Queue.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Authorization Rule. Changing this forces a new resource to be created. | 
| **queue_id** | string | True | -  |  -  | Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created. | 
| **listen** | bool | False | `False`  |  -  | Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`. | 
| **manage** | bool | False | `False`  |  -  | Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 

