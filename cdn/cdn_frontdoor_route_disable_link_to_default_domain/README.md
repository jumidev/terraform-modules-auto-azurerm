# azurerm_cdn_frontdoor_route_disable_link_to_default_domain



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_route_disable_link_to_default_domain"   
}
inputs = {
   # cdn_frontdoor_route_id → set in component_inputs
   # cdn_frontdoor_custom_domain_ids → set in component_inputs
}
component_inputs = {
   cdn_frontdoor_route_id = "path/to/cdn_frontdoor_route_component:id"   
   cdn_frontdoor_custom_domain_ids = "path/to/cdn_frontdoor_custom_domain_component:id"   
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
| **cdn_frontdoor_route_id** | string |  The resource ID of the Front Door Route where the Link To Default Domain property should be `disabled`. Changing this forces a new Front Door Route Disable Link To Default Domain to be created. | 
| **cdn_frontdoor_custom_domain_ids** | string |  The resource IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **cdn_frontdoor_custom_domain_ids** | string | No  | The resource IDs of the Front Door Custom Domains which are associated with this Front Door Route. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Front Door Route Disable Link To Default Domain. | 

Additionally, all variables are provided as outputs.
