# azurerm_cdn_endpoint_custom_domain

Manages a Custom Domain for a CDN Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **cdn_endpoint_id** | string | True | -  |  -  | The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **host_name** | string | True | -  |  -  | The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created. | 
| **cdn_managed_https** | block | False | -  |  -  | A `cdn_managed_https` block. | 
| **user_managed_https** | block | False | -  |  -  | A `user_managed_https` block. | 

