# azurerm_servicebus_namespace_authorization_rule

Manages a ServiceBus Namespace authorization Rule within a ServiceBus.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created. | 
| **var.namespace_id** | string | True | -  |  Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created. | 
| **var.listen** | bool | False | `False`  |  Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **var.manage** | bool | False | `False`  |  Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **namespace_id** | string  | - | 
| **listen** | bool  | - | 
| **send** | bool  | - | 
| **manage** | bool  | - | 
| **id** | string  | The ServiceBus Topic ID. | 
| **primary_key** | string  | The Primary Key for the ServiceBus Namespace authorization Rule. | 
| **primary_connection_string** | string  | The Primary Connection String for the ServiceBus Namespace authorization Rule. | 
| **secondary_key** | string  | The Secondary Key for the ServiceBus Namespace authorization Rule. | 
| **secondary_connection_string** | string  | The Secondary Connection String for the ServiceBus Namespace authorization Rule. | 
| **primary_connection_string_alias** | string  | The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired. | 
| **secondary_connection_string_alias** | string  | The alias Secondary Connection String for the ServiceBus Namespace | 