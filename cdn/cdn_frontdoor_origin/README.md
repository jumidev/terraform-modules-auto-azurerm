# azurerm_cdn_frontdoor_origin

Manages a Front Door (standard/premium) Origin.!>**IMPORTANT:** If you are attempting to implement an Origin that uses its own Private Link Service with a Load Balancer the Profile resource in your configuration file **must** have a `depends_on` meta-argument which references the `azurerm_private_link_service`, see `Example Usage With Private Link Service` below.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Front Door Origin. Changing this forces a new Front Door Origin to be created. | 
| **cdn_frontdoor_origin_group_id** | string | True | -  |  -  | The ID of the Front Door Origin Group within which this Front Door Origin should exist. Changing this forces a new Front Door Origin to be created. | 
| **host_name** | string | True | -  |  -  | The IPv4 address, IPv6 address or Domain name of the Origin. | 
| **certificate_name_check_enabled** | bool | True | -  |  -  | Specifies whether certificate name checks are enabled for this origin. | 
| **enabled** | bool | False | `True`  |  `true`, `false`  | Should the origin be enabled? Possible values are `true` or `false`. Defaults to `true`. | 
| **http_port** | string | False | `80`  |  -  | The value of the HTTP port. Must be between `1` and `65535`. Defaults to `80`. | 
| **https_port** | string | False | `443`  |  -  | The value of the HTTPS port. Must be between `1` and `65535`. Defaults to `443`. | 
| **origin_host_header** | string | False | -  |  -  | The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used. | 
| **priority** | string | False | `1`  |  -  | Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between `1` and `5` (inclusive). Defaults to `1`. | 
| **private_link** | block | False | -  |  -  | A `private_link` block. | 
| **weight** | int | False | `500`  |  -  | The weight of the origin in a given origin group for load balancing. Must be between `1` and `1000`. Defaults to `500`. | 

