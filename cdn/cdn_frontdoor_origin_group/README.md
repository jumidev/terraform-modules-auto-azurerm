# azurerm_cdn_frontdoor_origin_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_origin_group"   
}
inputs = {
   name = "The name which should be used for this Front Door Origin Group..."   
   # cdn_frontdoor_profile_id → set in component_inputs
   load_balancing = {
   }   
}
component_inputs = {
   cdn_frontdoor_profile_id = "path/to/cdn_frontdoor_profile_component:id"   
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
| **name** | string |  The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created. | 
| **cdn_frontdoor_profile_id** | string |  The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created. | 
| **load_balancing** | [block](#load_balancing-block-structure) |  A `load_balancing` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **health_probe** | [block](#health_probe-block-structure) |  -  |  -  |  A `health_probe` block. | 
| **restore_traffic_time_to_healed_or_new_endpoint_in_minutes** | number |  `10`  |  `0`, `50`, `10`  |  Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes. -> **NOTE:** This property is currently not used, but will be in the near future. | 
| **session_affinity_enabled** | bool |  `True`  |  -  |  Specifies whether session affinity should be enabled on this host. Defaults to `true`. | 

### `load_balancing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `additional_latency_in_milliseconds` | number | No | 50 | Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket. Possible values are between '0' and '1000' milliseconds (inclusive). Defaults to '50'. |
| `sample_size` | number | No | 4 | Specifies the number of samples to consider for load balancing decisions. Possible values are between '0' and '255' (inclusive). Defaults to '4'. |
| `successful_samples_required` | number | No | 3 | Specifies the number of samples within the sample period that must succeed. Possible values are between '0' and '255' (inclusive). Defaults to '3'. |

### `health_probe` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | Specifies the protocol to use for health probe. Possible values are 'Http' and 'Https'. |
| `interval_in_seconds` | number | Yes | - | Specifies the number of seconds between health probes. Possible values are between '5' and '31536000' seconds (inclusive). |
| `request_type` | string | No | HEAD | Specifies the type of health probe request that is made. Possible values are 'GET' and 'HEAD'. Defaults to 'HEAD'. |
| `path` | bool | No | False | Specifies the path relative to the origin that is used to determine the health of the origin. Defaults to '/'. -> **NOTE:** Health probes can only be disabled if there is a single enabled origin in a single enabled origin group. For more information about the 'health_probe' settings please see the [product documentation](https://docs.microsoft.com/azure/frontdoor/health-probes). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **successful_samples_required** | number | No  | Specifies the number of samples within the sample period that must succeed. Possible values are between `0` and `255` (inclusive). Defaults to `3`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Front Door Origin Group. | 

Additionally, all variables are provided as outputs.
