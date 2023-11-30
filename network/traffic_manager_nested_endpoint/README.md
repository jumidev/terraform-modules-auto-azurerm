# azurerm_traffic_manager_nested_endpoint

Manages a Nested Endpoint within a Traffic Manager Profile.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/traffic_manager_nested_endpoint" 
}

inputs = {
   minimum_child_endpoints = "minimum_child_endpoints of traffic_manager_nested_endpoint" 
   name = "name of traffic_manager_nested_endpoint" 
   profile_id = "profile_id of traffic_manager_nested_endpoint" 
   target_resource_id = "target_resource_id of traffic_manager_nested_endpoint" 
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
| **var.minimum_child_endpoints** | int | True | -  |  -  |  This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than `0`. | 
| **var.name** | string | True | -  |  -  |  The name of the External Endpoint. Changing this forces a new resource to be created. | 
| **var.profile_id** | string | True | -  |  -  |  The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  -  |  The resource id of an Azure resource to target. | 
| **var.weight** | string | False | -  |  `1`, `1000`  |  Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. | 
| **var.custom_header** | block | False | -  |  -  |  One or more `custom_header` blocks. | | `custom_header` block structure: || 
|   name (string): (REQUIRED) The name of the custom header. ||
|   value (string): (REQUIRED) The value of custom header. Applicable for HTTP and HTTPS protocol. ||

| **var.enabled** | bool | False | `True`  |  -  |  Is the endpoint enabled? Defaults to `true`. | 
| **var.endpoint_location** | string | False | -  |  -  |  Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method. | 
| **var.minimum_required_child_endpoints_ipv4** | int | False | -  |  -  |  This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and | 
| **var.minimum_required_child_endpoints_ipv6** | int | False | -  |  -  |  This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and | 
| **var.priority** | string | False | -  |  -  |  Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation. | 
| **var.geo_mappings** | list | False | -  |  -  |  A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault). | 
| **var.subnet** | block | False | -  |  -  |  One or more `subnet` blocks. Changing this forces a new resource to be created. | | `subnet` block structure: || 
|   first (string): (REQUIRED) The first IP Address in this subnet. ||
|   last (string): The last IP Address in this subnet. ||
|   scope (int): The block size (number of leading bits in the subnet mask). ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Nested Endpoint. | 

Additionally, all variables are provided as outputs.
