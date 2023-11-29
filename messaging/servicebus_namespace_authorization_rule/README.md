# azurerm_servicebus_namespace_authorization_rule

Manages a ServiceBus Namespace authorization Rule within a ServiceBus.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created. | 
| **namespace_id** | string | True | -  |  -  | Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created. | 
| **listen** | bool | False | `False`  |  -  | Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **manage** | bool | False | `False`  |  -  | Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 

