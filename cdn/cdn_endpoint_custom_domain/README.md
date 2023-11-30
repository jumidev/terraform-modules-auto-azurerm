# azurerm_cdn_endpoint_custom_domain

Manages a Custom Domain for a CDN Endpoint.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.cdn_endpoint_id** | string | True | The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.host_name** | string | True | The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.cdn_managed_https** | block | False | A `cdn_managed_https` block. | 
| **var.user_managed_https** | block | False | A `user_managed_https` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_endpoint_id** | string  | - | 
| **host_name** | string  | - | 
| **cdn_managed_https** | block  | - | 
| **user_managed_https** | block  | - | 
| **id** | string  | The ID of the CDN Endpoint Custom Domain. | 

## Example minimal hclt

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