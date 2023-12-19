# azurerm_key_vault_managed_hardware_security_module_role_definition

Manages a KeyVault Managed Hardware Security Module Role Definition. This resource works together with [Managed hardware security module resource](./key_vault_managed_hardware_security_module).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_managed_hardware_security_module_role_definition"   
}

inputs = {
   name = "The name which should be used for this KeyVault Role Definition..."   
   vault_base_url = "The base URL of the managed hardware security module resource..."   
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
| **name** | string |  The name which should be used for this KeyVault Role Definition. Changing this forces a new KeyVault Role Definition to be created. | 
| **vault_base_url** | string |  The base URL of the managed hardware security module resource. Changing this forces a new KeyVault Role Definition to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Specifies a text description about this KeyVault Role Definition. | 
| **permission** | [block](#permission-block-structure) |  One or more `permission` blocks. | 
| **role_name** | string |  Specify a name for this KeyVault Role Definition. | 

### `permission` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `actions` | list | No | - | One or more Allowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. |
| `not_actions` | list | No | - | One or more Disallowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. |
| `data_actions` | string | No | - | Specifies a list of data action permission to grant. Possible values are 'Microsoft.KeyVault/managedHsm/keys/read/action', 'Microsoft.KeyVault/managedHsm/keys/write/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/read/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/recover/action', 'Microsoft.KeyVault/managedHsm/keys/backup/action', 'Microsoft.KeyVault/managedHsm/keys/restore/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/delete/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/read/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/read/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/delete/action', 'Microsoft.KeyVault/managedHsm/keys/encrypt/action', 'Microsoft.KeyVault/managedHsm/keys/decrypt/action', 'Microsoft.KeyVault/managedHsm/keys/wrap/action', 'Microsoft.KeyVault/managedHsm/keys/unwrap/action', 'Microsoft.KeyVault/managedHsm/keys/sign/action', 'Microsoft.KeyVault/managedHsm/keys/verify/action', 'Microsoft.KeyVault/managedHsm/keys/create', 'Microsoft.KeyVault/managedHsm/keys/delete', 'Microsoft.KeyVault/managedHsm/keys/export/action', 'Microsoft.KeyVault/managedHsm/keys/release/action', 'Microsoft.KeyVault/managedHsm/keys/import/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/delete', 'Microsoft.KeyVault/managedHsm/securitydomain/download/action', 'Microsoft.KeyVault/managedHsm/securitydomain/download/read', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/action', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/read', 'Microsoft.KeyVault/managedHsm/securitydomain/transferkey/read', 'Microsoft.KeyVault/managedHsm/backup/start/action', 'Microsoft.KeyVault/managedHsm/restore/start/action', 'Microsoft.KeyVault/managedHsm/backup/status/action', 'Microsoft.KeyVault/managedHsm/restore/status/action' and 'Microsoft.KeyVault/managedHsm/rng/action'. |
| `not_data_actions` | string | No | - | Specifies a list of data action permission not to grant. Possible values are 'Microsoft.KeyVault/managedHsm/keys/read/action', 'Microsoft.KeyVault/managedHsm/keys/write/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/read/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/recover/action', 'Microsoft.KeyVault/managedHsm/keys/backup/action', 'Microsoft.KeyVault/managedHsm/keys/restore/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/delete/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/read/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/read/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/delete/action', 'Microsoft.KeyVault/managedHsm/keys/encrypt/action', 'Microsoft.KeyVault/managedHsm/keys/decrypt/action', 'Microsoft.KeyVault/managedHsm/keys/wrap/action', 'Microsoft.KeyVault/managedHsm/keys/unwrap/action', 'Microsoft.KeyVault/managedHsm/keys/sign/action', 'Microsoft.KeyVault/managedHsm/keys/verify/action', 'Microsoft.KeyVault/managedHsm/keys/create', 'Microsoft.KeyVault/managedHsm/keys/delete', 'Microsoft.KeyVault/managedHsm/keys/export/action', 'Microsoft.KeyVault/managedHsm/keys/release/action', 'Microsoft.KeyVault/managedHsm/keys/import/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/delete', 'Microsoft.KeyVault/managedHsm/securitydomain/download/action', 'Microsoft.KeyVault/managedHsm/securitydomain/download/read', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/action', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/read', 'Microsoft.KeyVault/managedHsm/securitydomain/transferkey/read', 'Microsoft.KeyVault/managedHsm/backup/start/action', 'Microsoft.KeyVault/managedHsm/restore/start/action', 'Microsoft.KeyVault/managedHsm/backup/status/action', 'Microsoft.KeyVault/managedHsm/restore/status/action' and 'Microsoft.KeyVault/managedHsm/rng/action'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the KeyVault Role Definition. | 
| **resource_id** | string | No  | The ID of the role definition resource without Key Vault base URL. | 
| **role_type** | string | No  | The type of the role definition. Possible values are `AKVBuiltInRole` and `CustomRole`. | 

Additionally, all variables are provided as outputs.
