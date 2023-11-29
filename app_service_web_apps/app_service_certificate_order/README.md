# azurerm_app_service_certificate_order

Manages an App Service Certificate Order.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the certificate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the certificate. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`. | 
| **var.auto_renew** | bool | False | `True`  |  -  | true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`. | 
| **var.csr** | string | False | -  |  -  | Last CSR that was created for this order. | 
| **var.distinguished_name** | string | False | -  |  -  | The Distinguished Name for the App Service Certificate Order. | 
| **var.key_size** | string | False | `2048`  |  -  | Certificate key size. Defaults to `2048`. | 
| **var.product_type** | string | False | `Standard`  |  -  | Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`. | 
| **var.validity_in_years** | string | False | `1`  |  -  | Duration in years (must be between `1` and `3`). Defaults to `1`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **auto_renew** | bool  | - | 
| **csr** | string  | - | 
| **distinguished_name** | string  | - | 
| **key_size** | string  | - | 
| **product_type** | string  | - | 
| **validity_in_years** | string  | - | 
| **id** | string  | The App Service Certificate Order ID. | 
| **certificates** | block  | State of the Key Vault secret. A `certificates` block. | 
| **domain_verification_token** | string  | Domain verification token. | 
| **status** | string  | Current order status. | 
| **expiration_time** | string  | Certificate expiration time. | 
| **is_private_key_external** | bool  | Whether the private key is external or not. | 
| **app_service_certificate_not_renewable_reasons** | string  | Reasons why App Service Certificate is not renewable at the current moment. | 
| **signed_certificate_thumbprint** | string  | Certificate thumbprint for signed certificate. | 
| **root_thumbprint** | string  | Certificate thumbprint for root certificate. | 
| **intermediate_thumbprint** | string  | Certificate thumbprint intermediate certificate. | 
| **tags** | map  | A mapping of tags to assign to the resource. | 
| **certificate_name** | string  | The name of the App Service Certificate. | 
| **key_vault_id** | string  | Key Vault resource Id. | 
| **key_vault_secret_name** | string  | Key Vault secret name. | 
| **provisioning_state** | string  | Status of the Key Vault secret. | 