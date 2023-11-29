# azurerm_key_vault

Manages a Key Vault.## Disclaimers~> **Note:** It's possible to define Key Vault Access Policies both within [the `azurerm_key_vault` resource](key_vault.html) via the `access_policy` block and by using [the `azurerm_key_vault_access_policy` resource](key_vault_access_policy.html). However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.~> **Note:** Terraform will automatically recover a soft-deleted Key Vault during Creation if one is found - you can opt out of this using the `features` block within the Provider block.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `standard`, `premium`  | The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`. | 
| **tenant_id** | string | True | -  |  -  | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. | 
| **access_policy** | block | False | -  |  -  | [A list](/docs/configuration/attr-as-blocks.html) of `access_policy` objects (up to 1024) describing access policies, as described below. | 
| **enabled_for_deployment** | bool | False | -  |  -  | Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | 
| **enabled_for_disk_encryption** | bool | False | -  |  -  | Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | 
| **enabled_for_template_deployment** | bool | False | -  |  -  | Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | 
| **enable_rbac_authorization** | bool | False | -  |  -  | Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions. | 
| **network_acls** | block | False | -  |  -  | A `network_acls` block. | 
| **purge_protection_enabled** | bool | False | -  |  -  | Is Purge Protection enabled for this Key Vault? | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this Key Vault. Defaults to `true`. | 
| **soft_delete_retention_days** | int | False | -  |  -  | The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days. | 
| **contact** | block | False | -  |  -  | One or more `contact` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

