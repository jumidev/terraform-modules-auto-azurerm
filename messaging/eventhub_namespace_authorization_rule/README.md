# azurerm_eventhub_namespace_authorization_rule

Manages an Authorization Rule for an Event Hub Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventhub_namespace_authorization_rule"   
}

inputs = {
   name = "Specifies the name of the Authorization Rule"   
   # namespace_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
}

tfstate_inputs = {
   namespace_name = "path/to/eventhub_namespace_component:name"   
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
| **name** | string |  Specifies the name of the Authorization Rule. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **listen** | bool |  `False`  |  Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **send** | bool |  `False`  |  Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **manage** | bool |  `False`  |  Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub Namespace Authorization Rule ID. | 
| **primary_connection_string_alias** | string | No  | The alias of the Primary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled. | 
| **secondary_connection_string_alias** | string | No  | The alias of the Secondary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled. | 
| **primary_connection_string** | string | No  | The Primary Connection String for the Authorization Rule. | 
| **primary_key** | string | No  | The Primary Key for the Authorization Rule. | 
| **secondary_connection_string** | string | No  | The Secondary Connection String for the Authorization Rule. | 
| **secondary_key** | string | No  | The Secondary Key for the Authorization Rule. | 

Additionally, all variables are provided as outputs.
