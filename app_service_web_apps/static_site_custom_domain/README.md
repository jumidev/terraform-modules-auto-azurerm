# azurerm_static_site_custom_domain

Manages a Static Site Custom Domain.!> DNS validation polling is only done for CNAME records, terraform will not validate TXT validation records are complete.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **domain_name** | string | True | -  |  -  | The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created. | 
| **static_site_id** | string | True | -  |  -  | The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created. | 
| **validation_type** | string | False | -  |  -  | One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created. | 

