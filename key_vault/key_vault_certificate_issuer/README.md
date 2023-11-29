# azurerm_key_vault_certificate_issuer

Manages a Key Vault Certificate Issuer.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **key_vault_id** | string | True | -  |  -  | The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created. | 
| **provider_name** | string | True | -  |  `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA`, `SslAdminV2`  | The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`. | 
| **org_id** | string | False | -  |  -  | The ID of the organization as provided to the issuer. | 
| **account_id** | string | False | -  |  -  | The account number with the third-party Certificate Issuer. | 
| **admin** | block | False | -  |  -  | One or more `admin` blocks. | 
| **password** | string | False | -  |  -  | The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value. | 

