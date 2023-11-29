# azurerm_key_vault_certificate

Manages a Key Vault Certificate.~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Certificate resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_certificates_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_certificates_on_destroy) for more information.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created. | 
| **var.key_vault_id** | string | True | The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created. | 
| **var.certificate** | block | False | A `certificate` block, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate. | 
| **var.certificate_policy** | block | False | A `certificate_policy` block. Changing this will create a new version of the Key Vault Certificate. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **key_vault_id** | string  | - | 
| **certificate** | block  | - | 
| **certificate_policy** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The Key Vault Certificate ID. | 
| **secret_id** | string  | The ID of the associated Key Vault Secret. | 
| **version** | string  | The current version of the Key Vault Certificate. | 
| **versionless_id** | string  | The Base ID of the Key Vault Certificate. | 
| **versionless_secret_id** | string  | The Base ID of the Key Vault Secret. | 
| **certificate_data** | string  | The raw Key Vault Certificate data represented as a hexadecimal string. | 
| **certificate_data_base64** | string  | The Base64 encoded Key Vault Certificate data. | 
| **thumbprint** | string  | The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string. | 
| **certificate_attribute** | block  | A `certificate_attribute` block. | 
| **resource_manager_id** | string  | The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_manager_versionless_id** | string  | The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated. | 
| **created** | string  | The create time of the Key Vault Certificate. | 
| **enabled** | bool  | whether the Key Vault Certificate is enabled. | 
| **expires** | string  | The expires time of the Key Vault Certificate. | 
| **not_before** | string  | The not before valid time of the Key Vault Certificate. | 
| **recovery_level** | string  | The deletion recovery level of the Key Vault Certificate. | 
| **updated** | string  | The recent update time of the Key Vault Certificate. | 