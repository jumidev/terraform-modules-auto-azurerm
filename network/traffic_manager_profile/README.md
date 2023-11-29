# azurerm_traffic_manager_profile

Manages a Traffic Manager Profile to which multiple endpoints can be attached.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Traffic Manager profile. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created. | 
| **profile_status** | string | False | `Enabled`  |  -  | The status of the profile, can be set to either `Enabled` or `Disabled`. Defaults to `Enabled`. | 
| **traffic_routing_method** | string | True | -  |  `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet`, `MultiValue`  | Specifies the algorithm used to route traffic. Possible values are `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet` and `MultiValue`. | 
| **Geographic** | string | False | -  |  -  | Traffic is routed based on Geographic regions specified in the Endpoint. | 
| **MultiValue** | string | False | -  |  -  | All healthy Endpoints are returned.  MultiValue routing method works only if all the endpoints of type `External` and are specified as IPv4 or IPv6 addresses. | 
| **Performance** | string | False | -  |  -  | Traffic is routed via the User's closest Endpoint | 
| **Priority** | string | False | -  |  -  | Traffic is routed to the Endpoint with the lowest `priority` value. | 
| **Subnet** | string | False | -  |  -  | Traffic is routed based on a mapping of sets of end-user IP address ranges to a specific Endpoint within a Traffic Manager profile. | 
| **Weighted** | string | False | -  |  -  | Traffic is spread across Endpoints proportional to their `weight` value. | 
| **traffic_view_enabled** | bool | False | -  |  -  | Indicates whether Traffic View is enabled for the Traffic Manager profile. | 
| **dns_config** | block | True | -  |  -  | This block specifies the DNS configuration of the Profile. One `dns_config` block. | 
| **monitor_config** | block | True | -  |  -  | This block specifies the Endpoint monitoring configuration for the Profile. One `monitor_config` block. | 
| **max_return** | string | False | -  |  `1`, `8`  | The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

