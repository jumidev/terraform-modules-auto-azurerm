# azurerm_key_vault_managed_storage_account

Manages a Key Vault Managed Storage Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_managed_storage_account" 
}

inputs = {
   name = "name of key_vault_managed_storage_account" 
   key_vault_id = "key_vault_id of key_vault_managed_storage_account" 
   storage_account_id = "storage_account_id of key_vault_managed_storage_account" 
   storage_account_key = "storage_account_key of key_vault_managed_storage_account" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this Key Vault Managed Storage Account. Changing this forces a new Key Vault Managed Storage Account to be created. | 
| **key_vault_id** | string |  -  |  The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  -  |  The ID of the Storage Account. | 
| **storage_account_key** | string |  `key1`, `key2`  |  Which Storage Account access key that is managed by Key Vault. Possible values are `key1` and `key2`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **regenerate_key_automatically** | string |  Should Storage Account access key be regenerated periodically? | 
| **regeneration_period** | string |  How often Storage Account access key should be regenerated. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations). | 
| **tags** | map |  A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Key Vault Managed Storage Account. | 

Additionally, all variables are provided as outputs.
