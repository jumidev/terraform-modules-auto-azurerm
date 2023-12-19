# azurerm_cdn_endpoint_custom_domain

Manages a Custom Domain for a CDN Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_endpoint_custom_domain"   
}

inputs = {
   name = "The name which should be used for this CDN Endpoint Custom Domain..."   
   # cdn_endpoint_id → set in component_inputs
   host_name = "The host name of the custom domain"   
}

component_inputs = {
   cdn_endpoint_id = "path/to/cdn_endpoint_component:id"   
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
| **name** | string |  The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **cdn_endpoint_id** | string |  The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **host_name** | string |  The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **cdn_managed_https** | [block](#cdn_managed_https-block-structure) |  A `cdn_managed_https` block. | 
| **user_managed_https** | [block](#user_managed_https-block-structure) |  A `user_managed_https` block. | 

### `user_managed_https` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_certificate_id` | string | No | - | The ID of the Key Vault Certificate that contains the HTTPS certificate. This is deprecated in favor of 'key_vault_secret_id'. |
| `key_vault_secret_id` | string | No | - | The ID of the Key Vault Secret that contains the HTTPS certificate. |
| `tls_version` | string | No | TLS12 | The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'. |

### `cdn_managed_https` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate_type` | string | Yes | - | The type of HTTPS certificate. Possible values are 'Shared' and 'Dedicated'. |
| `protocol_type` | string | Yes | - | The type of protocol. Possible values are 'ServerNameIndication' and 'IPBased'. |
| `tls_version` | string | No | TLS12 | The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CDN Endpoint Custom Domain. | 

Additionally, all variables are provided as outputs.
