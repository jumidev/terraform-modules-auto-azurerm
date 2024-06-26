# azurerm_key_vault_certificate_issuer



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_certificate_issuer"   
}
inputs = {
   # key_vault_id → set in component_inputs
   name = "The name which should be used for this Key Vault Certificate Issuer..."   
   provider_name = "The name of the third-party Certificate Issuer"   
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
| **key_vault_id** | string |  -  |  The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created. | 
| **name** | string |  -  |  The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created. | 
| **provider_name** | string |  `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA`, `SslAdminV2`  |  The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **org_id** | string |  The ID of the organization as provided to the issuer. | 
| **account_id** | string |  The account number with the third-party Certificate Issuer. | 
| **admins** | [block](#admin-block-structure) |  One or more `admin` blocks. | 
| **password** | string |  The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value. | 

### `admin` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email_address` | string | Yes | - | E-mail address of the admin. |
| `first_name` | string | No | - | First name of the admin. |
| `last_name` | string | No | - | Last name of the admin. |
| `phone` | number | No | - | Phone number of the admin. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **phone** | number | No  | Phone number of the admin. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Key Vault Certificate Issuer. | 

Additionally, all variables are provided as outputs.
