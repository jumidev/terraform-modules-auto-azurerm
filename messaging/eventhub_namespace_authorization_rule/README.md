# azurerm_eventhub_namespace_authorization_rule

Manages an Authorization Rule for an Event Hub Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Authorization Rule. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created. | 
| **listen** | bool | False | `False`  |  -  | Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **manage** | bool | False | `False`  |  -  | Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 

