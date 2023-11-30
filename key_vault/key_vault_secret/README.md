# azurerm_key_vault_secret

Manages a Key Vault Secret.~> **Note:** All arguments including the secret value will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Secret resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_secrets_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_secrets_on_destroy) for more information.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_secret" 
}

inputs = {
   name = "name of key_vault_secret" 
   value = "value of key_vault_secret" 
   key_vault_id = "key_vault_id of key_vault_secret" 
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
| **var.name** | string |  Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created. | 
| **var.value** | string |  Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret. | 
| **var.key_vault_id** | string |  The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.content_type** | string |  Specifies the content type for the Key Vault Secret. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 
| **var.not_before_date** | datetime |  Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **var.expiration_date** | datetime |  Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Key Vault Secret ID. | 
| **resource_id** | string | No  | The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_versionless_id** | string | No  | The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated. | 
| **version** | string | No  | The current version of the Key Vault Secret. | 
| **versionless_id** | string | No  | The Base ID of the Key Vault Secret. | 

Additionally, all variables are provided as outputs.
