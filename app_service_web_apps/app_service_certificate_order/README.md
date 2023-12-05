# azurerm_app_service_certificate_order

Manages an App Service Certificate Order.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_service_web_apps/app_service_certificate_order"   
}

inputs = {
   name = "Specifies the name of the certificate"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the certificate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the certificate. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **auto_renew** | bool |  `True`  |  true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`. | 
| **csr** | string |  -  |  Last CSR that was created for this order. | 
| **distinguished_name** | string |  -  |  The Distinguished Name for the App Service Certificate Order. | 
| **key_size** | string |  `2048`  |  Certificate key size. Defaults to `2048`. | 
| **product_type** | string |  `Standard`  |  Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`. | 
| **validity_in_years** | string |  `1`  |  Duration in years (must be between `1` and `3`). Defaults to `1`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The App Service Certificate Order ID. | 
| **certificates** | block | No  | State of the Key Vault secret. A `certificates` block. | 
| **domain_verification_token** | string | No  | Domain verification token. | 
| **status** | string | No  | Current order status. | 
| **expiration_time** | string | No  | Certificate expiration time. | 
| **is_private_key_external** | bool | No  | Whether the private key is external or not. | 
| **app_service_certificate_not_renewable_reasons** | string | No  | Reasons why App Service Certificate is not renewable at the current moment. | 
| **signed_certificate_thumbprint** | string | No  | Certificate thumbprint for signed certificate. | 
| **root_thumbprint** | string | No  | Certificate thumbprint for root certificate. | 
| **intermediate_thumbprint** | string | No  | Certificate thumbprint intermediate certificate. | 
| **tags** | map | No  | A mapping of tags to assign to the resource. | 
| **certificate_name** | string | No  | The name of the App Service Certificate. | 
| **key_vault_id** | string | No  | Key Vault resource Id. | 
| **key_vault_secret_name** | string | No  | Key Vault secret name. | 
| **provisioning_state** | string | No  | Status of the Key Vault secret. | 

Additionally, all variables are provided as outputs.
