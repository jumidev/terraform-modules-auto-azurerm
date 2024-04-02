# azurerm_key_vault_access_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_access_policy"   
}

inputs = {
   # key_vault_id → set in component_inputs
   tenant_id = "The Azure Active Directory tenant ID that should be used for authenticating requ..."   
   object_id = "The object ID of a user, service principal or security group in the Azure Active..."   
}

component_inputs = {
   key_vault_id = "path/to/key_vault_component:id"   
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
| **key_vault_id** | string |  -  |  Specifies the id of the Key Vault resource. Changing this forces a new resource to be created. | 
| **tenant_id** | string |  -  |  The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created. | 
| **object_id** | string |  `azuread_service_principal.object_id`  |  The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **application_id** | string |  The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created. | 
| **certificate_permissions** | list |  List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`. | 
| **key_permissions** | list |  List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`. | 
| **secret_permissions** | list |  List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`. | 
| **storage_permissions** | list |  List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **storage_permissions** | list | No  | List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | Key Vault Access Policy ID. -> **NOTE:** This Identifier is unique to Terraform and doesn't map to an existing object within Azure. | 

Additionally, all variables are provided as outputs.
