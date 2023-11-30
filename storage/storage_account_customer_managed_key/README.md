# azurerm_storage_account_customer_managed_key

Manages a Customer Managed Key for a Storage Account.~> **NOTE:** It's possible to define a Customer Managed Key both within [the `azurerm_storage_account` resource](storage_account.html) via the `customer_managed_key` block and by using [the `azurerm_storage_account_customer_managed_key` resource](storage_account_customer_managed_key.html). However it's not possible to use both methods to manage a Customer Managed Key for a Storage Account, since there'll be conflicts.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_account_customer_managed_key" 
}

inputs = {
   storage_account_id = "storage_account_id of storage_account_customer_managed_key" 
   key_name = "key_name of storage_account_customer_managed_key" 
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
| **var.storage_account_id** | string |  The ID of the Storage Account. Changing this forces a new resource to be created. | 
| **var.key_name** | string |  The name of Key Vault Key. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.key_vault_id** | string |  The ID of the Key Vault. Exactly one of `key_vault_id`, or `key_vault_uri` must be specified. | 
| **var.key_vault_uri** | string |  URI pointing at the Key Vault. Required when using `federated_identity_client_id`. Exactly one of `key_vault_id`, or `key_vault_uri` must be specified. | 
| **var.key_version** | string |  The version of Key Vault Key. Remove or omit this argument to enable Automatic Key Rotation. | 
| **var.user_assigned_identity_id** | string |  The ID of a user assigned identity. | 
| **var.federated_identity_client_id** | string |  The Client ID of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account. | 

Additionally, all variables are provided as outputs.
