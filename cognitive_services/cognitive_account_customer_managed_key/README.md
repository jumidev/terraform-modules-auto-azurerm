# azurerm_cognitive_account_customer_managed_key

Manages a Customer Managed Key for a Cognitive Services Account.~> **NOTE:** It's possible to define a Customer Managed Key both within [the `azurerm_cognitive_account` resource](cognitive_account.html) via the `customer_managed_key` block and by using [the `azurerm_cognitive_account_customer_managed_key` resource](cognitive_account_customer_managed_key.html). However it's not possible to use both methods to manage a Customer Managed Key for a Cognitive Account, since there'll be conflicts.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.cognitive_account_id** | string | True | -  |  -  | The ID of the Cognitive Account. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | True | -  |  -  | The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account. | 
| **var.identity_client_id** | string | False | -  |  -  | The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cognitive_account_id** | string  | - | 
| **key_vault_key_id** | string  | - | 
| **identity_client_id** | string  | - | 
| **id** | string  | The ID of the Cognitive Account. | 