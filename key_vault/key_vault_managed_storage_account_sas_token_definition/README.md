# azurerm_key_vault_managed_storage_account_sas_token_definition

Manages a Key Vault Managed Storage Account SAS Definition.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_managed_storage_account_sas_token_definition"   
}

inputs = {
   name = "The name which should be used for this SAS Definition..."   
   # managed_storage_account_id → set in component_inputs
   sas_template_uri = "The SAS definition token template signed with an arbitrary key..."   
   sas_type = "The type of SAS token the SAS definition will create..."   
   validity_period = "Validity period of SAS token"   
}

component_inputs = {
   managed_storage_account_id = "path/to/storage_account_component:id"   
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
| **name** | string |  -  |  The name which should be used for this SAS Definition. | 
| **managed_storage_account_id** | string |  -  |  The ID of the Managed Storage Account. | 
| **sas_template_uri** | string |  -  |  The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period. | 
| **sas_type** | string |  `account`, `service`  |  The type of SAS token the SAS definition will create. Possible values are `account` and `service`. | 
| **validity_period** | string |  -  |  Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Storage Account SAS Definition. | 
| **secret_id** | string | No  | The ID of the Secret that is created by Managed Storage Account SAS Definition. | 

Additionally, all variables are provided as outputs.
