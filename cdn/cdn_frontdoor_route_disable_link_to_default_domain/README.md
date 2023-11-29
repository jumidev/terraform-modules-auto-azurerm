# azurerm_cdn_frontdoor_route_disable_link_to_default_domain

Manages the Link To Default Domain property of a Front Door (standard/premium) Route.!>**IMPORTANT:** This resource has been deprecated and should not be used for new deployments. The `azurerm_cdn_frontdoor_route_disable_link_to_default_domain` resource will be removed from the 4.0 AzureRM provider. Please use the `link_to_default_domain` field in the `azurerm_cdn_frontdoor_route` resource to control this value.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.cdn_frontdoor_route_id** | string | True | -  |  -  | The resource ID of the Front Door Route where the Link To Default Domain property should be `disabled`. Changing this forces a new Front Door Route Disable Link To Default Domain to be created. | 
| **var.cdn_frontdoor_custom_domain_ids** | string | True | -  |  -  | The resource IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cdn_frontdoor_route_id** | string  | - | 
| **cdn_frontdoor_custom_domain_ids** | string  | - | 
| **id** | string  | The ID of the Front Door Route Disable Link To Default Domain. | 