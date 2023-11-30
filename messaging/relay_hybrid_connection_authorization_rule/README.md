# azurerm_relay_hybrid_connection_authorization_rule

Manages an Azure Relay Hybrid Connection Authorization Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/relay_hybrid_connection_authorization_rule" 
}

inputs = {
   name = "name of relay_hybrid_connection_authorization_rule" 
   hybrid_connection_name = "hybrid_connection_name of relay_hybrid_connection_authorization_rule" 
   namespace_name = "namespace_name of relay_hybrid_connection_authorization_rule" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name which should be used for this Azure Relay Hybrid Connection Authorization Rule. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.hybrid_connection_name** | string |  Name of the Azure Relay Hybrid Connection for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.namespace_name** | string |  Name of the Azure Relay Namespace for which this Azure Relay Hybrid Connection Authorization Rule will be created. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Azure Relay Hybrid Connection Authorization Rule should exist. Changing this forces a new Azure Relay Hybrid Connection Authorization Rule to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.listen** | bool |  `False`  |  Grants listen access to this Authorization Rule. Defaults to `false`. | 
| **var.send** | bool |  `False`  |  Grants send access to this Authorization Rule. Defaults to `false`. | 
| **var.manage** | bool |  `False`  |  Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Relay Hybrid Connection Authorization Rule. | 
| **primary_key** | string | No  | The Primary Key for the Azure Relay Hybrid Connection Authorization Rule. | 
| **primary_connection_string** | string | No  | The Primary Connection String for the Azure Relay Hybrid Connection Authorization Rule. | 
| **secondary_key** | string | No  | The Secondary Key for the Azure Relay Hybrid Connection Authorization Rule. | 
| **secondary_connection_string** | string | No  | The Secondary Connection String for the Azure Relay Hybrid Connection Authorization Rule. | 

Additionally, all variables are provided as outputs.
