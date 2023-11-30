# azurerm_traffic_manager_azure_endpoint

Manages an Azure Endpoint within a Traffic Manager Profile.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/traffic_manager_azure_endpoint" 
}

inputs = {
   name = "name of traffic_manager_azure_endpoint" 
   profile_id = "profile_id of traffic_manager_azure_endpoint" 
   target_resource_id = "target_resource_id of traffic_manager_azure_endpoint" 
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
| **var.name** | string  The name of the Azure Endpoint. Changing this forces a new resource to be created. | 
| **var.profile_id** | string  The ID of the Traffic Manager Profile that this Azure Endpoint should be created within. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string  The ID of the Azure Resource which should be used as a target. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.weight** | string  -  |  `1`, `1000`  |  Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. | 
| **var.custom_header** | block  -  |  -  |  One or more `custom_header` blocks. | 
| **var.enabled** | bool  `True`  |  -  |  Is the endpoint enabled? Defaults to `true`. | 
| **var.geo_mappings** | list  -  |  -  |  A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault). | 
| **var.priority** | string  -  |  -  |  Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation. | 
| **var.subnet** | block  -  |  -  |  One or more `subnet` blocks. Changing this forces a new resource to be created. | 

### `custom_header` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `value` | string | Yes | - | The value of custom header. Applicable for HTTP and HTTPS protocol. |

### `subnet` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `first` | string | Yes | - | The first IP Address in this subnet. |
| `last` | string | No | - | The last IP Address in this subnet. |
| `scope` | int | No | - | The block size (number of leading bits in the subnet mask). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Endpoint. | 

Additionally, all variables are provided as outputs.
