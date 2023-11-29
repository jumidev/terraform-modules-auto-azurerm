# azurerm_servicebus_topic_authorization_rule

Manages a ServiceBus Topic authorization Rule within a ServiceBus Topic.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created. | 
| **topic_id** | string | True | -  |  -  | Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created. | 
| **listen** | bool | False | `False`  |  -  | Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **manage** | bool | False | `False`  |  -  | Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 

