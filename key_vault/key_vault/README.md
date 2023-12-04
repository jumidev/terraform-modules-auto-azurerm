# azurerm_key_vault

Manages a Key Vault.## Disclaimers~> **Note:** It's possible to define Key Vault Access Policies both within [the `azurerm_key_vault` resource](key_vault.html) via the `access_policy` block and by using [the `azurerm_key_vault_access_policy` resource](key_vault_access_policy.html). However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.~> **Note:** Terraform will automatically recover a soft-deleted Key Vault during Creation if one is found - you can opt out of this using the `features` block within the Provider block.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault" 
}

inputs = {
   name = "name of key_vault" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of key_vault" 
   tenant_id = "tenant_id of key_vault" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `standard`, `premium`  |  The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`. | 
| **tenant_id** | string |  -  |  The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **access_policy** | [block](#access_policy-block-structure) |  -  |  [A list](/docs/configuration/attr-as-blocks.html) of `access_policy` objects (up to 1024) describing access policies, as described below. | 
| **enabled_for_deployment** | bool |  -  |  Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | 
| **enabled_for_disk_encryption** | bool |  -  |  Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | 
| **enabled_for_template_deployment** | bool |  -  |  Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | 
| **enable_rbac_authorization** | bool |  -  |  Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions. | 
| **network_acls** | [block](#network_acls-block-structure) |  -  |  A `network_acls` block. | 
| **purge_protection_enabled** | bool |  -  |  Is Purge Protection enabled for this Key Vault? | 
| **public_network_access_enabled** | bool |  `True`  |  Whether public network access is allowed for this Key Vault. Defaults to `true`. | 
| **soft_delete_retention_days** | int |  -  |  The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days. | 
| **contact** | [block](#contact-block-structure) |  -  |  One or more `contact` block. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tenant_id` | string | Yes | - | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Must match the 'tenant_id' used above. |
| `object_id` | string | Yes | - | The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. |
| `application_id` | string | No | - | The object ID of an Application in Azure Active Directory. |
| `certificate_permissions` | list | No | - | List of certificate permissions, must be one or more from the following: 'Backup', 'Create', 'Delete', 'DeleteIssuers', 'Get', 'GetIssuers', 'Import', 'List', 'ListIssuers', 'ManageContacts', 'ManageIssuers', 'Purge', 'Recover', 'Restore', 'SetIssuers' and 'Update'. |
| `key_permissions` | string | No | - | List of key permissions. Possible values are 'Backup', 'Create', 'Decrypt', 'Delete', 'Encrypt', 'Get', 'Import', 'List', 'Purge', 'Recover', 'Restore', 'Sign', 'UnwrapKey', 'Update', 'Verify', 'WrapKey', 'Release', 'Rotate', 'GetRotationPolicy' and 'SetRotationPolicy'. |
| `secret_permissions` | list | No | - | List of secret permissions, must be one or more from the following: 'Backup', 'Delete', 'Get', 'List', 'Purge', 'Recover', 'Restore' and 'Set'. |
| `storage_permissions` | list | No | - | List of storage permissions, must be one or more from the following: 'Backup', 'Delete', 'DeleteSAS', 'Get', 'GetSAS', 'List', 'ListSAS', 'Purge', 'Recover', 'RegenerateKey', 'Restore', 'Set', 'SetSAS' and 'Update'. |

### `contact` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | E-mail address of the contact. |
| `phone` | int | No | - | Phone number of the contact. |

### `network_acls` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `bypass` | string | Yes | - | Specifies which traffic can bypass the network rules. Possible values are 'AzureServices' and 'None'. |
| `default_action` | string | Yes | - | The Default Action to use when no rules match from 'ip_rules' / 'virtual_network_subnet_ids'. Possible values are 'Allow' and 'Deny'. |
| `ip_rules` | list | No | - | One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault. |
| `virtual_network_subnet_ids` | list | No | - | One or more Subnet IDs which should be able to access this Key Vault. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Key Vault. | 
| **vault_uri** | string | No  | The URI of the Key Vault, used for performing operations on keys and secrets. | 

Additionally, all variables are provided as outputs.
