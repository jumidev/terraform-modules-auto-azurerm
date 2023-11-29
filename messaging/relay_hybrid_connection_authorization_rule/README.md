# azurerm_relay_hybrid_connection_authorization_rule

Manages an Azure Relay Hybrid Connection Authorization Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.hybrid_connection_name** | string | True | -  |  -  | Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.namespace_name** | string | True | -  |  -  | Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.listen** | bool | False | `False`  |  -  | Grants listen access to this Authorization Rule. Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  -  | Grants send access to this Authorization Rule. Defaults to `false`. | 
| **var.manage** | bool | False | `False`  |  -  | Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **hybrid_connection_name** | string  | - | 
| **namespace_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **listen** | bool  | - | 
| **send** | bool  | - | 
| **manage** | bool  | - | 
| **id** | string  | The ID of the Azure Relay Hybrid Connection Authorization Rule. | 
| **primary_key** | string  | The Primary Key for the Azure Relay Hybrid Connection Authorization Rule. | 
| **primary_connection_string** | string  | The Primary Connection String for the Azure Relay Hybrid Connection Authorization Rule. | 
| **secondary_key** | string  | The Secondary Key for the Azure Relay Hybrid Connection Authorization Rule. | 
| **secondary_connection_string** | string  | The Secondary Connection String for the Azure Relay Hybrid Connection Authorization Rule. | 