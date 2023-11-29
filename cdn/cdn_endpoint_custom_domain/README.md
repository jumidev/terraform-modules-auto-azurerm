# azurerm_cdn_endpoint_custom_domain

Manages a Custom Domain for a CDN Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.cdn_endpoint_id** | string | True | -  |  -  | The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.host_name** | string | True | -  |  -  | The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **var.cdn_managed_https** | block | False | -  |  -  | A `cdn_managed_https` block. | 
| **var.user_managed_https** | block | False | -  |  -  | A `user_managed_https` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_endpoint_id** | string  | - | 
| **host_name** | string  | - | 
| **cdn_managed_https** | block  | - | 
| **user_managed_https** | block  | - | 
| **id** | string  | The ID of the CDN Endpoint Custom Domain. | 