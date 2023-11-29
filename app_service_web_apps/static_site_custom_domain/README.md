# azurerm_static_site_custom_domain

Manages a Static Site Custom Domain.!> DNS validation polling is only done for CNAME records, terraform will not validate TXT validation records are complete.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.domain_name** | string | True | The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created. | 
| **var.static_site_id** | string | True | The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created. | 
| **var.validation_type** | string | False | One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **domain_name** | string  | - | 
| **static_site_id** | string  | - | 
| **validation_type** | string  | - | 
| **id** | string  | The ID of the Static Site Custom Domain. | 
| **validation_token** | string  | Token to be used with `dns-txt-token` validation. | 