# azurerm_traffic_manager_profile

Manages a Traffic Manager Profile to which multiple endpoints can be attached.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/traffic_manager_profile"   
}

inputs = {
   name = "The name of the Traffic Manager profile"   
   resource_group_name = "${resource_group}"   
   traffic_routing_method = "Specifies the algorithm used to route traffic"   
   dns_config = "This block specifies the DNS configuration of the Profile..."   
   monitor_config = "This block specifies the Endpoint monitoring configuration for the Profile..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Traffic Manager profile. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created. | 
| **traffic_routing_method** | string |  `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet`, `MultiValue`  |  Specifies the algorithm used to route traffic. Possible values are `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet` and `MultiValue`. | 
| **dns_config** | string |  `dns_config`  |  This block specifies the DNS configuration of the Profile. One `dns_config` block. | 
| **monitor_config** | string |  `monitor_config`  |  This block specifies the Endpoint monitoring configuration for the Profile. One `monitor_config` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **profile_status** | string |  `Enabled`  |  `Enabled`, `Disabled`  |  The status of the profile, can be set to either `Enabled` or `Disabled`. Defaults to `Enabled`. | 
| **Geographic** | string |  -  |  -  |  Traffic is routed based on Geographic regions specified in the Endpoint. | 
| **MultiValue** | string |  -  |  -  |  All healthy Endpoints are returned.  MultiValue routing method works only if all the endpoints of type `External` and are specified as IPv4 or IPv6 addresses. | 
| **Performance** | string |  -  |  -  |  Traffic is routed via the User's closest Endpoint | 
| **Priority** | string |  -  |  -  |  Traffic is routed to the Endpoint with the lowest `priority` value. | 
| **Subnet** | string |  -  |  -  |  Traffic is routed based on a mapping of sets of end-user IP address ranges to a specific Endpoint within a Traffic Manager profile. | 
| **Weighted** | string |  -  |  -  |  Traffic is spread across Endpoints proportional to their `weight` value. | 
| **traffic_view_enabled** | bool |  -  |  -  |  Indicates whether Traffic View is enabled for the Traffic Manager profile. | 
| **max_return** | string |  -  |  `1`, `8`  |  The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Traffic Manager Profile. | 
| **fqdn** | string | No  | The FQDN of the created Profile. | 

Additionally, all variables are provided as outputs.
