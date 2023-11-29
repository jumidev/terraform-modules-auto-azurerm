# azurerm_storage_account_customer_managed_key

Manages a Customer Managed Key for a Storage Account.~> **NOTE:** It's possible to define a Customer Managed Key both within [the `azurerm_storage_account` resource](storage_account.html) via the `customer_managed_key` block and by using [the `azurerm_storage_account_customer_managed_key` resource](storage_account_customer_managed_key.html). However it's not possible to use both methods to manage a Customer Managed Key for a Storage Account, since there'll be conflicts.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.storage_account_id** | string | True | The ID of the Storage Account. Changing this forces a new resource to be created. | 
| **var.key_name** | string | True | The name of Key Vault Key. | 
| **var.key_vault_id** | string | False | The ID of the Key Vault. Exactly one of `key_vault_id`, or `key_vault_uri` must be specified. | 
| **var.key_vault_uri** | string | False | URI pointing at the Key Vault. Required when using `federated_identity_client_id`. Exactly one of `key_vault_id`, or `key_vault_uri` must be specified. | 
| **var.key_version** | string | False | The version of Key Vault Key. Remove or omit this argument to enable Automatic Key Rotation. | 
| **var.user_assigned_identity_id** | string | False | The ID of a user assigned identity. | 
| **var.federated_identity_client_id** | string | False | The Client ID of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **storage_account_id** | string  | - | 
| **key_name** | string  | - | 
| **key_vault_id** | string  | - | 
| **key_vault_uri** | string  | - | 
| **key_version** | string  | - | 
| **user_assigned_identity_id** | string  | - | 
| **federated_identity_client_id** | string  | - | 
| **id** | string  | The ID of the Storage Account. | 