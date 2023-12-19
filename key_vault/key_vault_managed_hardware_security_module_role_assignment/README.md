# azurerm_key_vault_managed_hardware_security_module_role_assignment

Manages a KeyVault Role Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_managed_hardware_security_module_role_assignment"   
}

inputs = {
   name = "The name in GUID notation which should be used for this KeyVault Role Assignment..."   
   principal_id = "The principal ID to be assigned to this role"   
   # role_definition_id → set in component_inputs
   scope = "Specifies the scope to create the role assignment"   
   vault_base_url = "The HSM URI of a Managed Hardware Security Module resource..."   
}

component_inputs = {
   role_definition_id = "path/to/role_definition_component:id"   
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
| **name** | string |  The name in GUID notation which should be used for this KeyVault Role Assignment. Changing this forces a new KeyVault to be created. | 
| **principal_id** | string |  The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new KeyVault to be created. | 
| **role_definition_id** | string |  The resource ID of the role definition to assign. Changing this forces a new KeyVault to be created. | 
| **scope** | string |  Specifies the scope to create the role assignment. Changing this forces a new KeyVault to be created. | 
| **vault_base_url** | string |  The HSM URI of a Managed Hardware Security Module resource. Changing this forces a new KeyVault to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the KeyVault Role Assignment with Vault Base URL. | 
| **resource_id** | string | No  | The resource id of created assignment resource. | 

Additionally, all variables are provided as outputs.
