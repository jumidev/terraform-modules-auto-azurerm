# azurerm_key_vault_certificate_issuer

Manages a Key Vault Certificate Issuer.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_certificate_issuer" 
}

inputs = {
   key_vault_id = "key_vault_id of key_vault_certificate_issuer" 
   name = "name of key_vault_certificate_issuer" 
   provider_name = "provider_name of key_vault_certificate_issuer" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.key_vault_id** | string | True | -  |  The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created. | 
| **var.provider_name** | string | True | `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA`, `SslAdminV2`  |  The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`. | 
| **var.org_id** | string | False | -  |  The ID of the organization as provided to the issuer. | 
| **var.account_id** | string | False | -  |  The account number with the third-party Certificate Issuer. | 
| **var.admin** | block | False | -  |  One or more `admin` blocks. | 
| **var.password** | string | False | -  |  The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value. | 

### `admin` block structure

> `email_address` (string): (REQUIRED) E-mail address of the admin.
> `first_name` (string): First name of the admin.
> `last_name` (string): Last name of the admin.
> `phone` (int): Phone number of the admin.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Key Vault Certificate Issuer. | 

Additionally, all variables are provided as outputs.
