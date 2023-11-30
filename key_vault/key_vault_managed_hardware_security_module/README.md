# azurerm_key_vault_managed_hardware_security_module

Manages a Key Vault Managed Hardware Security Module.~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Managed Hardware Security Module resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_hardware_security_modules_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_hardware_security_modules_on_destroy) for more information.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_managed_hardware_security_module" 
}

inputs = {
   name = "name of key_vault_managed_hardware_security_module" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   admin_object_ids = "admin_object_ids of key_vault_managed_hardware_security_module" 
   sku_name = "sku_name of key_vault_managed_hardware_security_module" 
   tenant_id = "tenant_id of key_vault_managed_hardware_security_module" 
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
| **var.name** | string | True | -  |  Specifies the name of the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.admin_object_ids** | string | True | -  |  Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is `Standard_B1`. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string | True | -  |  The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **var.purge_protection_enabled** | bool | False | -  |  Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created. | 
| **var.soft_delete_retention_days** | int | False | `90`  |  The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` days. Defaults to `90`. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether traffic from public networks is permitted. Defaults to `true`. Changing this forces a new resource to be created. | 
| **var.network_acls** | block | False | -  |  A `network_acls` block. | 
| **var.security_domain_key_vault_certificate_ids** | list | False | -  |  A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see [activate-your-managed-hsm](https://learn.microsoft.com/azure/key-vault/managed-hsm/quick-create-cli#activate-your-managed-hsm) | 
| **var.security_domain_quorum** | string | False | -  |  Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when `security_domain_key_vault_certificate_ids` is specified. Valid values are between 2 and 10. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

### `network_acls` block structure

> `bypass` (string): (REQUIRED) Specifies which traffic can bypass the network rules. Possible values are 'AzureServices' and 'None'.
> `default_action` (string): (REQUIRED) The Default Action to use. Possible values are 'Allow' and 'Deny'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Key Vault Secret Managed Hardware Security Module ID. | 
| **hsm_uri** | string | No  | The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys. | 
| **security_domain_encrypted_data** | string | No  | This attribute can be used for disaster recovery or when creating another Managed HSM that shares the same security domain. | 

Additionally, all variables are provided as outputs.
