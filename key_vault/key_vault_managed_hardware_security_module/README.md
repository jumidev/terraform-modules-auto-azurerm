# azurerm_key_vault_managed_hardware_security_module

Manages a Key Vault Managed Hardware Security Module.~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Managed Hardware Security Module resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_hardware_security_modules_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_hardware_security_modules_on_destroy) for more information.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **admin_object_ids** | string | True | -  |  -  | Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  -  | The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is `Standard_B1`. Changing this forces a new resource to be created. | 
| **tenant_id** | string | True | -  |  -  | The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created. | 
| **purge_protection_enabled** | bool | False | -  |  -  | Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created. | 
| **soft_delete_retention_days** | int | False | `90`  |  -  | The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` days. Defaults to `90`. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether traffic from public networks is permitted. Defaults to `true`. Changing this forces a new resource to be created. | 
| **network_acls** | block | False | -  |  -  | A `network_acls` block. | 
| **security_domain_key_vault_certificate_ids** | list | False | -  |  -  | A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see [activate-your-managed-hsm](https://learn.microsoft.com/azure/key-vault/managed-hsm/quick-create-cli#activate-your-managed-hsm) | 
| **security_domain_quorum** | string | False | -  |  -  | Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when `security_domain_key_vault_certificate_ids` is specified. Valid values are between 2 and 10. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. Changing this forces a new resource to be created. | 

