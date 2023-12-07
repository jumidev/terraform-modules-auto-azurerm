# azurerm_traffic_manager_external_endpoint

Manages an External Endpoint within a Traffic Manager Profile.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/traffic_manager_external_endpoint"   
}

inputs = {
   name = "The name of the External Endpoint"   
   profile_id = "The ID of the Traffic Manager Profile that this External Endpoint should be crea..."   
   target = "The FQDN DNS name of the target"   
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
| **name** | string |  The name of the External Endpoint. Changing this forces a new resource to be created. | 
| **profile_id** | string |  The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created. | 
| **target** | string |  The FQDN DNS name of the target. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **weight** | string |  -  |  `1`, `1000`  |  Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. | 
| **endpoint_location** | string |  -  |  `Performance`  |  Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method. | 
| **custom_header** | [block](#custom_header-block-structure) |  -  |  -  |  One or more `custom_header` blocks. | 
| **enabled** | bool |  `True`  |  -  |  Is the endpoint enabled? Defaults to `true`. | 
| **geo_mappings** | list |  -  |  -  |  A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault). | 
| **priority** | string |  -  |  `Priority`  |  Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation. | 
| **subnet** | [block](#subnet-block-structure) |  -  |  -  |  One or more `subnet` blocks. Changing this forces a new resource to be created. | 

### `subnet` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `first` | string | Yes | - | The first IP Address in this subnet. |
| `last` | string | No | - | The last IP Address in this subnet. |
| `scope` | int | No | - | The block size (number of leading bits in the subnet mask). |

### `custom_header` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the custom header. |
| `value` | string | Yes | - | The value of custom header. Applicable for HTTP and HTTPS protocol. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the External Endpoint. | 

Additionally, all variables are provided as outputs.
