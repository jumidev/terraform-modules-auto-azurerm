# azurerm_key_vault_secret

Manages a Key Vault Secret.~> **Note:** All arguments including the secret value will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Secret resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_secrets_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_secrets_on_destroy) for more information.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created. | 
| **var.value** | string | True | -  |  -  | Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret. | 
| **var.key_vault_id** | string | True | -  |  -  | The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created. | 
| **var.content_type** | string | False | -  |  -  | Specifies the content type for the Key Vault Secret. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.not_before_date** | datetime | False | -  |  -  | Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **var.expiration_date** | datetime | False | -  |  -  | Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **value** | string  | - | 
| **key_vault_id** | string  | - | 
| **content_type** | string  | - | 
| **tags** | map  | - | 
| **not_before_date** | datetime  | - | 
| **expiration_date** | datetime  | - | 
| **id** | string  | The Key Vault Secret ID. | 
| **resource_id** | string  | The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_versionless_id** | string  | The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated. | 
| **version** | string  | The current version of the Key Vault Secret. | 
| **versionless_id** | string  | The Base ID of the Key Vault Secret. | 