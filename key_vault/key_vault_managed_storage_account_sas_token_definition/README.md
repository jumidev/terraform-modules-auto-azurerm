# azurerm_key_vault_managed_storage_account_sas_token_definition

Manages a Key Vault Managed Storage Account SAS Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this SAS Definition. | 
| **managed_storage_account_id** | string | True | -  |  -  | The ID of the Managed Storage Account. | 
| **sas_template_uri** | string | True | -  |  -  | The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period. | 
| **sas_type** | string | True | -  |  `account`, `service`  | The type of SAS token the SAS definition will create. Possible values are `account` and `service`. | 
| **validity_period** | string | True | -  |  -  | Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations). | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created. | 

