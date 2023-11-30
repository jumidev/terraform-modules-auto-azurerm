# azurerm_key_vault

Manages a Key Vault.## Disclaimers~> **Note:** It's possible to define Key Vault Access Policies both within [the `azurerm_key_vault` resource](key_vault.html) via the `access_policy` block and by using [the `azurerm_key_vault_access_policy` resource](key_vault_access_policy.html). However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.~> **Note:** Terraform will automatically recover a soft-deleted Key Vault during Creation if one is found - you can opt out of this using the `features` block within the Provider block.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `standard`, `premium`  |  The Name of the SKU used for this Key Vault. Possible values are `standard` and `premium`. | 
| **var.tenant_id** | string | True | -  |  -  |  The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. | 
| **var.access_policy** | block | False | -  |  -  |  [A list](/docs/configuration/attr-as-blocks.html) of `access_policy` objects (up to 1024) describing access policies, as described below. | 
| **var.enabled_for_deployment** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | 
| **var.enabled_for_disk_encryption** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | 
| **var.enabled_for_template_deployment** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | 
| **var.enable_rbac_authorization** | bool | False | -  |  -  |  Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions. | 
| **var.network_acls** | block | False | -  |  -  |  A `network_acls` block. | 
| **var.purge_protection_enabled** | bool | False | -  |  -  |  Is Purge Protection enabled for this Key Vault? | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether public network access is allowed for this Key Vault. Defaults to `true`. | 
| **var.soft_delete_retention_days** | int | False | -  |  -  |  The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` (the default) days. | 
| **var.contact** | block | False | -  |  -  |  One or more `contact` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **tenant_id** | string  | - | 
| **access_policy** | block  | - | 
| **enabled_for_deployment** | bool  | - | 
| **enabled_for_disk_encryption** | bool  | - | 
| **enabled_for_template_deployment** | bool  | - | 
| **enable_rbac_authorization** | bool  | - | 
| **network_acls** | block  | - | 
| **purge_protection_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **soft_delete_retention_days** | int  | - | 
| **contact** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Key Vault. | 
| **vault_uri** | string  | The URI of the Key Vault, used for performing operations on keys and secrets. | 

## Example minimal hclt

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