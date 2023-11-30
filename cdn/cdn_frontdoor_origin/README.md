# azurerm_cdn_frontdoor_origin

Manages a Front Door (standard/premium) Origin.!>**IMPORTANT:** If you are attempting to implement an Origin that uses its own Private Link Service with a Load Balancer the Profile resource in your configuration file **must** have a `depends_on` meta-argument which references the `azurerm_private_link_service`, see `Example Usage With Private Link Service` below.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Front Door Origin. Changing this forces a new Front Door Origin to be created. | 
| **var.cdn_frontdoor_origin_group_id** | string | True | -  |  -  |  The ID of the Front Door Origin Group within which this Front Door Origin should exist. Changing this forces a new Front Door Origin to be created. | 
| **var.host_name** | string | True | -  |  -  |  The IPv4 address, IPv6 address or Domain name of the Origin. | 
| **var.certificate_name_check_enabled** | bool | True | -  |  -  |  Specifies whether certificate name checks are enabled for this origin. | 
| **var.enabled** | bool | False | `True`  |  `true`, `false`  |  Should the origin be enabled? Possible values are `true` or `false`. Defaults to `true`. | 
| **var.http_port** | string | False | `80`  |  -  |  The value of the HTTP port. Must be between `1` and `65535`. Defaults to `80`. | 
| **var.https_port** | string | False | `443`  |  -  |  The value of the HTTPS port. Must be between `1` and `65535`. Defaults to `443`. | 
| **var.origin_host_header** | string | False | -  |  -  |  The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used. | 
| **var.priority** | string | False | `1`  |  -  |  Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between `1` and `5` (inclusive). Defaults to `1`. | 
| **var.private_link** | block | False | -  |  -  |  A `private_link` block. | 
| **var.weight** | int | False | `500`  |  -  |  The weight of the origin in a given origin group for load balancing. Must be between `1` and `1000`. Defaults to `500`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_frontdoor_origin_group_id** | string  | - | 
| **host_name** | string  | - | 
| **certificate_name_check_enabled** | bool  | - | 
| **enabled** | bool  | - | 
| **http_port** | string  | - | 
| **https_port** | string  | - | 
| **origin_host_header** | string  | - | 
| **priority** | string  | - | 
| **private_link** | block  | - | 
| **weight** | int  | - | 
| **id** | string  | The ID of the Front Door Origin. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_origin" 
}

inputs = {
   name = "name of cdn_frontdoor_origin" 
   cdn_frontdoor_origin_group_id = "cdn_frontdoor_origin_group_id of cdn_frontdoor_origin" 
   host_name = "host_name of cdn_frontdoor_origin" 
   certificate_name_check_enabled = "certificate_name_check_enabled of cdn_frontdoor_origin" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```