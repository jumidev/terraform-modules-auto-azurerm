# azurerm_key_vault

Manages a Key Vault.## Disclaimers~> **Note:** It's possible to define Key Vault Access Policies both within [the `azurerm_key_vault` resource](key_vault.html) via the `access_policy` block and by using [the `azurerm_key_vault_access_policy` resource](key_vault_access_policy.html). However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.~> **Note:** Terraform will automatically recover a soft-deleted Key Vault during Creation if one is found - you can opt out of this using the `features` block within the Provider block.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `standard`, `premium`  |  The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`. | 
| **var.tenant_id** | string | True | -  |  -  |  The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. | 
| **var.access_policy** | block | False | -  |  -  |  [A list](/docs/configuration/attr-as-blocks.html) of `access_policy` objects (up to 1024) describing access policies, as described below. | | `access_policy` block structure: || 
|   tenant_id (string): (REQUIRED) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Must match the 'tenant_id' used above. ||
|   object_id (string): (REQUIRED) The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. ||
|   application_id (string): The object ID of an Application in Azure Active Directory. ||
|   certificate_permissions (list): List of certificate permissions, must be one or more from the following: 'Backup', 'Create', 'Delete', 'DeleteIssuers', 'Get', 'GetIssuers', 'Import', 'List', 'ListIssuers', 'ManageContacts', 'ManageIssuers', 'Purge', 'Recover', 'Restore', 'SetIssuers' and 'Update'. ||
|   key_permissions (string): List of key permissions. Possible values are 'Backup', 'Create', 'Decrypt', 'Delete', 'Encrypt', 'Get', 'Import', 'List', 'Purge', 'Recover', 'Restore', 'Sign', 'UnwrapKey', 'Update', 'Verify', 'WrapKey', 'Release', 'Rotate', 'GetRotationPolicy' and 'SetRotationPolicy'. ||
|   secret_permissions (list): List of secret permissions, must be one or more from the following: 'Backup', 'Delete', 'Get', 'List', 'Purge', 'Recover', 'Restore' and 'Set'. ||
|   storage_permissions (list): List of storage permissions, must be one or more from the following: 'Backup', 'Delete', 'DeleteSAS', 'Get', 'GetSAS', 'List', 'ListSAS', 'Purge', 'Recover', 'RegenerateKey', 'Restore', 'Set', 'SetSAS' and 'Update'. ||

| **var.enabled_for_deployment** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | 
| **var.enabled_for_disk_encryption** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | 
| **var.enabled_for_template_deployment** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | 
| **var.enable_rbac_authorization** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions. | 
| **var.network_acls** | block | False | -  |  -  |  A `network_acls` block. | | `network_acls` block structure: || 
|   bypass (string): (REQUIRED) Specifies which traffic can bypass the network rules. Possible values are 'AzureServices' and 'None'. ||
|   default_action (string): (REQUIRED) The Default Action to use when no rules match from 'ip_rules' / 'virtual_network_subnet_ids'. Possible values are 'Allow' and 'Deny'. ||
|   ip_rules (list): One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault. ||
|   virtual_network_subnet_ids (list): One or more Subnet IDs which should be able to access this Key Vault. ||

| **var.purge_protection_enabled** | bool | False | -  |  -  |  Is Purge Protection enabled for this Key Vault? | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether public network access is allowed for this Key Vault. Defaults to `true`. | 
| **var.soft_delete_retention_days** | int | False | -  |  -  |  The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days. | 
| **var.contact** | block | False | -  |  -  |  One or more `contact` block. | | `contact` block structure: || 
|   email (string): (REQUIRED) E-mail address of the contact. ||
|   name (string): Name of the contact. ||
|   phone (int): Phone number of the contact. ||

| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Key Vault. | 
| **vault_uri** | string | No  | The URI of the Key Vault, used for performing operations on keys and secrets. | 

Additionally, all variables are provided as outputs.
