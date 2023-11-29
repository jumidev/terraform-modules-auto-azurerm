# azurerm_relay_namespace_authorization_rule

Manages an Azure Relay Namespace Authorization Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Azure Relay Namespace Authorization Rule. Changing this forces a new Azure Relay Namespace Authorization Rule to be created. | 
| **namespace_name** | string | True | -  |  -  | Name of the Azure Relay Namespace for which this Azure Relay Namespace Authorization Rule will be created. Changing this forces a new Azure Relay Namespace Authorization Rule to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Relay Namespace Authorization Rule should exist. Changing this forces a new Azure Relay Namespace Authorization Rule to be created. | 
| **listen** | bool | False | `False`  |  -  | Grants listen access to this Authorization Rule. Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Grants send access to this Authorization Rule. Defaults to `false`. | 
| **manage** | bool | False | `False`  |  -  | Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`. | 

