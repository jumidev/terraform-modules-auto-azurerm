# azurerm_cdn_frontdoor_route_disable_link_to_default_domain

Manages the Link To Default Domain property of a Front Door (standard/premium) Route.!>**IMPORTANT:** This resource has been deprecated and should not be used for new deployments. The `azurerm_cdn_frontdoor_route_disable_link_to_default_domain` resource will be removed from the 4.0 AzureRM provider. Please use the `link_to_default_domain` field in the `azurerm_cdn_frontdoor_route` resource to control this value.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_route_disable_link_to_default_domain" 
}

inputs = {
   cdn_frontdoor_route_id = "cdn_frontdoor_route_id of cdn_frontdoor_route_disable_link_to_default_domain" 
   cdn_frontdoor_custom_domain_ids = "cdn_frontdoor_custom_domain_ids of cdn_frontdoor_route_disable_link_to_default_domain" 
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
| **var.cdn_frontdoor_route_id** | string |  The resource ID of the Front Door Route where the Link To Default Domain property should be `disabled`. Changing this forces a new Front Door Route Disable Link To Default Domain to be created. | 
| **var.cdn_frontdoor_custom_domain_ids** | string |  The resource IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Route Disable Link To Default Domain. | 

Additionally, all variables are provided as outputs.
