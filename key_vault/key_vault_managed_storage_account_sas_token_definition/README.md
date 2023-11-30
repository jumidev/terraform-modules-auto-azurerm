# azurerm_key_vault_managed_storage_account_sas_token_definition

Manages a Key Vault Managed Storage Account SAS Definition.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_managed_storage_account_sas_token_definition" 
}

inputs = {
   name = "name of key_vault_managed_storage_account_sas_token_definition" 
   managed_storage_account_id = "managed_storage_account_id of key_vault_managed_storage_account_sas_token_definition" 
   sas_template_uri = "sas_template_uri of key_vault_managed_storage_account_sas_token_definition" 
   sas_type = "sas_type of key_vault_managed_storage_account_sas_token_definition" 
   validity_period = "validity_period of key_vault_managed_storage_account_sas_token_definition" 
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
| **var.name** | string |  -  |  The name which should be used for this SAS Definition. | 
| **var.managed_storage_account_id** | string |  -  |  The ID of the Managed Storage Account. | 
| **var.sas_template_uri** | string |  -  |  The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period. | 
| **var.sas_type** | string |  `account`, `service`  |  The type of SAS token the SAS definition will create. Possible values are `account` and `service`. | 
| **var.validity_period** | string |  -  |  Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Storage Account SAS Definition. | 
| **secret_id** | string | No  | The ID of the Secret that is created by Managed Storage Account SAS Definition. | 

Additionally, all variables are provided as outputs.
