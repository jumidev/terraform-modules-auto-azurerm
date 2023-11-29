# azurerm_cdn_frontdoor_origin_group

Manages a Front Door (standard/premium) Origin Group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | -  |  -  | The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created. | 
| **var.load_balancing** | block | True | -  |  -  | A `load_balancing` block. | 
| **var.health_probe** | block | False | -  |  -  | A `health_probe` block. | 
| **var.restore_traffic_time_to_healed_or_new_endpoint_in_minutes** | string | False | `10`  |  `0`, `50`, `10`  | Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes. | 
| **var.session_affinity_enabled** | bool | False | `True`  |  -  | Specifies whether session affinity should be enabled on this host. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_frontdoor_profile_id** | string  | - | 
| **load_balancing** | block  | - | 
| **health_probe** | block  | - | 
| **restore_traffic_time_to_healed_or_new_endpoint_in_minutes** | string  | - | 
| **session_affinity_enabled** | bool  | - | 
| **id** | string  | The ID of the Front Door Origin Group. | 