# azurerm_key_vault_secret

Manages a Key Vault Secret.~> **Note:** All arguments including the secret value will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Secret resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_secrets_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_secrets_on_destroy) for more information.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created. | 
| **value** | string | True | -  |  -  | Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret. | 
| **key_vault_id** | string | True | -  |  -  | The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created. | 
| **content_type** | string | False | -  |  -  | Specifies the content type for the Key Vault Secret. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **not_before_date** | datetime | False | -  |  -  | Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **expiration_date** | datetime | False | -  |  -  | Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). | 

