# azurerm_traffic_manager_profile

Manages a Traffic Manager Profile to which multiple endpoints can be attached.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/traffic_manager_profile" 
}

inputs = {
   name = "name of traffic_manager_profile" 
   resource_group_name = "${resource_group}" 
   traffic_routing_method = "traffic_routing_method of traffic_manager_profile" 
   dns_config = {
      example_dns_config = {
         ...
      }
  
   }
 
   monitor_config = {
      example_monitor_config = {
         ...
      }
  
   }
 
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
| **var.name** | string | True | -  |  -  |  The name of the Traffic Manager profile. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created. | 
| **var.profile_status** | string | False | `Enabled`  |  -  |  The status of the profile, can be set to either `Enabled` or `Disabled`. Defaults to `Enabled`. | 
| **var.traffic_routing_method** | string | True | -  |  `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet`, `MultiValue`  |  Specifies the algorithm used to route traffic. Possible values are `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet` and `MultiValue`. | 
| **var.Geographic** | string | False | -  |  -  |  Traffic is routed based on Geographic regions specified in the Endpoint. | 
| **var.MultiValue** | string | False | -  |  -  |  All healthy Endpoints are returned.  MultiValue routing method works only if all the endpoints of type `External` and are specified as IPv4 or IPv6 addresses. | 
| **var.Performance** | string | False | -  |  -  |  Traffic is routed via the User's closest Endpoint | 
| **var.Priority** | string | False | -  |  -  |  Traffic is routed to the Endpoint with the lowest `priority` value. | 
| **var.Subnet** | string | False | -  |  -  |  Traffic is routed based on a mapping of sets of end-user IP address ranges to a specific Endpoint within a Traffic Manager profile. | 
| **var.Weighted** | string | False | -  |  -  |  Traffic is spread across Endpoints proportional to their `weight` value. | 
| **var.traffic_view_enabled** | bool | False | -  |  -  |  Indicates whether Traffic View is enabled for the Traffic Manager profile. | 
| **var.dns_config** | block | True | -  |  -  |  This block specifies the DNS configuration of the Profile. One `dns_config` block. | 
| **var.monitor_config** | block | True | -  |  -  |  This block specifies the Endpoint monitoring configuration for the Profile. One `monitor_config` block. | 
| **var.max_return** | string | False | -  |  `1`, `8`  |  The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `dns_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `relative_name` | string | Yes | - | The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below. Changing this forces a new resource to be created. |
| `ttl` | int | Yes | - | The TTL value of the Profile used by Local DNS resolvers and clients. |

### `monitor_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | The protocol used by the monitoring checks, supported values are 'HTTP', 'HTTPS' and 'TCP'. |
| `port` | string | Yes | - | The port number used by the monitoring checks. |
| `path` | string | No | - | The path used by the monitoring checks. Required when 'protocol' is set to 'HTTP' or 'HTTPS' - cannot be set when 'protocol' is set to 'TCP'. |
| `expected_status_code_ranges` | list | No | - | A list of status code ranges in the format of '100-101'. |
| `custom_header` | block | No | - | One or more 'custom_header' blocks. |
| `interval_in_seconds` | int | No | - | The interval used to check the endpoint health from a Traffic Manager probing agent. You can specify two values here: '30' (normal probing) and '10' (fast probing). The default value is '30'. |
| `timeout_in_seconds` | string | No | - | The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint. If 'interval_in_seconds' is set to '30', then 'timeout_in_seconds' can be between '5' and '10'. The default value is '10'. If 'interval_in_seconds' is set to '10', then valid values are between '5' and '9' and 'timeout_in_seconds' is required. |
| `tolerated_number_of_failures` | string | No | - | The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy. Valid values are between '0' and '9'. The default value is '3' |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Traffic Manager Profile. | 
| **fqdn** | string | No  | The FQDN of the created Profile. | 

Additionally, all variables are provided as outputs.
