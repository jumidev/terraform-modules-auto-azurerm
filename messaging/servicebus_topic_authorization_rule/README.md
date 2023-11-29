# azurerm_servicebus_topic_authorization_rule

Manages a ServiceBus Topic authorization Rule within a ServiceBus Topic.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created. | 
| **var.topic_id** | string | True | -  |  Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created. | 
| **var.listen** | bool | False | `False`  |  Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **var.manage** | bool | False | `False`  |  Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **topic_id** | string  | - | 
| **listen** | bool  | - | 
| **send** | bool  | - | 
| **manage** | bool  | - | 
| **id** | string  | The ServiceBus Topic ID. | 
| **primary_key** | string  | The Primary Key for the ServiceBus Topic authorization Rule. | 
| **primary_connection_string** | string  | The Primary Connection String for the ServiceBus Topic authorization Rule. | 
| **secondary_key** | string  | The Secondary Key for the ServiceBus Topic authorization Rule. | 
| **secondary_connection_string** | string  | The Secondary Connection String for the ServiceBus Topic authorization Rule. | 
| **primary_connection_string_alias** | string  | The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired. | 
| **secondary_connection_string_alias** | string  | The alias Secondary Connection String for the ServiceBus Namespace | 