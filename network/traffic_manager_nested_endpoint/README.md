# azurerm_traffic_manager_nested_endpoint

Manages a Nested Endpoint within a Traffic Manager Profile.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **minimum_child_endpoints** | int | True | -  |  -  | This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than `0`. | 
| **name** | string | True | -  |  -  | The name of the External Endpoint. Changing this forces a new resource to be created. | 
| **profile_id** | string | True | -  |  -  | The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The resource id of an Azure resource to target. | 
| **weight** | string | False | -  |  `1`, `1000`  | Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. | 
| **custom_header** | block | False | -  |  -  | One or more `custom_header` blocks. | 
| **enabled** | bool | False | `True`  |  -  | Is the endpoint enabled? Defaults to `true`. | 
| **endpoint_location** | string | False | -  |  -  | Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method. | 
| **minimum_required_child_endpoints_ipv4** | int | False | -  |  -  | This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and | 
| **minimum_required_child_endpoints_ipv6** | int | False | -  |  -  | This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and | 
| **priority** | string | False | -  |  -  | Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation. | 
| **geo_mappings** | list | False | -  |  -  | A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault). | 
| **subnet** | block | False | -  |  -  | One or more `subnet` blocks. Changing this forces a new resource to be created. | 

