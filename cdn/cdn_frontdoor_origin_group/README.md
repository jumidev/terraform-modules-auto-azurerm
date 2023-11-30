# azurerm_cdn_frontdoor_origin_group

Manages a Front Door (standard/premium) Origin Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_origin_group" 
}

inputs = {
   name = "name of cdn_frontdoor_origin_group" 
   cdn_frontdoor_profile_id = "cdn_frontdoor_profile_id of cdn_frontdoor_origin_group" 
   load_balancing = "load_balancing of cdn_frontdoor_origin_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | -  |  -  |  The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created. | 
| **var.load_balancing** | block | True | -  |  -  |  A `load_balancing` block. | 
| **var.health_probe** | block | False | -  |  -  |  A `health_probe` block. | 
| **var.restore_traffic_time_to_healed_or_new_endpoint_in_minutes** | string | False | `10`  |  `0`, `50`, `10`  |  Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes. | 
| **var.session_affinity_enabled** | bool | False | `True`  |  -  |  Specifies whether session affinity should be enabled on this host. Defaults to `true`. | 

### `load_balancing` block structure

> `additional_latency_in_milliseconds` (string): Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket. Possible values are between '0' and '1000' milliseconds (inclusive). Defaults to '50'.
> `sample_size` (string): Specifies the number of samples to consider for load balancing decisions. Possible values are between '0' and '255' (inclusive). Defaults to '4'.
> `successful_samples_required` (string): Specifies the number of samples within the sample period that must succeed. Possible values are between '0' and '255' (inclusive). Defaults to '3'.

### `health_probe` block structure

> `protocol` (string): (REQUIRED) Specifies the protocol to use for health probe. Possible values are 'Http' and 'Https'.
> `interval_in_seconds` (string): (REQUIRED) Specifies the number of seconds between health probes. Possible values are between '5' and '31536000' seconds (inclusive).
> `request_type` (string): Specifies the type of health probe request that is made. Possible values are 'GET' and 'HEAD'. Defaults to 'HEAD'.
> `path` (string): Specifies the path relative to the origin that is used to determine the health of the origin. Defaults to '/'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Origin Group. | 

Additionally, all variables are provided as outputs.
