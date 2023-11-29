# azurerm_key_vault_managed_storage_account

Manages a Key Vault Managed Storage Account.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Key Vault Managed Storage Account. Changing this forces a new Key Vault Managed Storage Account to be created. | 
| **var.key_vault_id** | string | True | -  |  The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | -  |  The ID of the Storage Account. | 
| **var.storage_account_key** | string | True | `key1`, `key2`  |  Which Storage Account access key that is managed by Key Vault. Possible values are `key1` and `key2`. | 
| **var.regenerate_key_automatically** | string | False | -  |  Should Storage Account access key be regenerated periodically? | 
| **var.regeneration_period** | string | False | -  |  How often Storage Account access key should be regenerated. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations). | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **key_vault_id** | string  | - | 
| **storage_account_id** | string  | - | 
| **storage_account_key** | string  | - | 
| **regenerate_key_automatically** | string  | - | 
| **regeneration_period** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Key Vault Managed Storage Account. | 