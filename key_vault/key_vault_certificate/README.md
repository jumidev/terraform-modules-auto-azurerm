# azurerm_key_vault_certificate

Manages a Key Vault Certificate.~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Certificate resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_certificates_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_certificates_on_destroy) for more information.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_certificate" 
}

inputs = {
   name = "name of key_vault_certificate" 
   key_vault_id = "key_vault_id of key_vault_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created. | 
| **var.key_vault_id** | string | True | The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created. | 
| **var.certificate** | block | False | A `certificate` block, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate. | 
| `certificate` block structure: || 
|   contents (string): (REQUIRED) The base64-encoded certificate contents. ||
|   password (string): The password associated with the certificate. ||
| **var.certificate_policy** | block | False | A `certificate_policy` block. Changing this will create a new version of the Key Vault Certificate. | 
| `certificate_policy` block structure: || 
|   issuer_parameters (block): (REQUIRED) A 'issuer_parameters' block. ||
|   key_properties (block): (REQUIRED) A 'key_properties' block. ||
|   lifetime_action (block): A 'lifetime_action' block. ||
|   secret_properties (block): (REQUIRED) A 'secret_properties' block. ||
|   x509_certificate_properties (block): A 'x509_certificate_properties' block. Required when 'certificate' block is not specified. ||
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Key Vault Certificate ID. | 
| **secret_id** | string | No  | The ID of the associated Key Vault Secret. | 
| **version** | string | No  | The current version of the Key Vault Certificate. | 
| **versionless_id** | string | No  | The Base ID of the Key Vault Certificate. | 
| **versionless_secret_id** | string | No  | The Base ID of the Key Vault Secret. | 
| **certificate_data** | string | No  | The raw Key Vault Certificate data represented as a hexadecimal string. | 
| **certificate_data_base64** | string | No  | The Base64 encoded Key Vault Certificate data. | 
| **thumbprint** | string | No  | The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string. | 
| **certificate_attribute** | block | No  | A `certificate_attribute` block. | 
| **resource_manager_id** | string | No  | The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_manager_versionless_id** | string | No  | The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated. | 
| **created** | string | No  | The create time of the Key Vault Certificate. | 
| **enabled** | bool | No  | whether the Key Vault Certificate is enabled. | 
| **expires** | string | No  | The expires time of the Key Vault Certificate. | 
| **not_before** | string | No  | The not before valid time of the Key Vault Certificate. | 
| **recovery_level** | string | No  | The deletion recovery level of the Key Vault Certificate. | 
| **updated** | string | No  | The recent update time of the Key Vault Certificate. | 

Additionally, all variables are provided as outputs.
