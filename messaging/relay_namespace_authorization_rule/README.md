# azurerm_relay_namespace_authorization_rule

Manages an Azure Relay Namespace Authorization Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/relay_namespace_authorization_rule" 
}

inputs = {
   name = "name of relay_namespace_authorization_rule" 
   namespace_name = "namespace_name of relay_namespace_authorization_rule" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Azure Relay Namespace Authorization Rule. Changing this forces a new Azure Relay Namespace Authorization Rule to be created. | 
| **var.namespace_name** | string | True | -  |  Name of the Azure Relay Namespace for which this Azure Relay Namespace Authorization Rule will be created. Changing this forces a new Azure Relay Namespace Authorization Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Azure Relay Namespace Authorization Rule should exist. Changing this forces a new Azure Relay Namespace Authorization Rule to be created. | 
| **var.listen** | bool | False | `False`  |  Grants listen access to this Authorization Rule. Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  Grants send access to this Authorization Rule. Defaults to `false`. | 
| **var.manage** | bool | False | `False`  |  Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Relay Namespace Authorization Rule. | 
| **primary_key** | string | No  | The Primary Key for the Azure Relay Namespace Authorization Rule. | 
| **primary_connection_string** | string | No  | The Primary Connection String for the Azure Relay Namespace Authorization Rule. | 
| **secondary_key** | string | No  | The Secondary Key for the Azure Relay Namespace Authorization Rule. | 
| **secondary_connection_string** | string | No  | The Secondary Connection String for the Azure Relay Namespace Authorization Rule. | 

Additionally, all variables are provided as outputs.
