# azurerm_cdn_endpoint_custom_domain

Manages a Custom Domain for a CDN Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_endpoint_custom_domain" 
}

inputs = {
   name = "name of cdn_endpoint_custom_domain" 
   cdn_endpoint_id = "cdn_endpoint_id of cdn_endpoint_custom_domain" 
   host_name = "host_name of cdn_endpoint_custom_domain" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.cdn_endpoint_id** | string | True | The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.host_name** | string | True | The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.cdn_managed_https** | block | False | A `cdn_managed_https` block. | | `cdn_managed_https` block structure: || 
|   certificate_type (string): (REQUIRED) The type of HTTPS certificate. Possible values are 'Shared' and 'Dedicated'. ||
|   protocol_type (string): (REQUIRED) The type of protocol. Possible values are 'ServerNameIndication' and 'IPBased'. ||
|   tls_version (string): The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'. ||

| **var.user_managed_https** | block | False | A `user_managed_https` block. | | `user_managed_https` block structure: || 
|   key_vault_certificate_id (string): The ID of the Key Vault Certificate that contains the HTTPS certificate. This is deprecated in favor of 'key_vault_secret_id'. ||
|   key_vault_secret_id (string): The ID of the Key Vault Secret that contains the HTTPS certificate. ||
|   tls_version (string): The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CDN Endpoint Custom Domain. | 

Additionally, all variables are provided as outputs.
