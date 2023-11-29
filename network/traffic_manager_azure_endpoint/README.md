# azurerm_traffic_manager_azure_endpoint

Manages an Azure Endpoint within a Traffic Manager Profile.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Azure Endpoint. Changing this forces a new resource to be created. | 
| **var.profile_id** | string | True | -  |  -  |  The ID of the Traffic Manager Profile that this Azure Endpoint should be created within. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  -  |  The ID of the Azure Resource which should be used as a target. | 
| **var.weight** | string | False | -  |  `1`, `1000`  |  Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. | 
| **var.custom_header** | block | False | -  |  -  |  One or more `custom_header` blocks. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the endpoint enabled? Defaults to `true`. | 
| **var.geo_mappings** | list | False | -  |  -  |  A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault). | 
| **var.priority** | string | False | -  |  -  |  Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation. | 
| **var.subnet** | block | False | -  |  -  |  One or more `subnet` blocks. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **profile_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **weight** | string  | - | 
| **custom_header** | block  | - | 
| **enabled** | bool  | - | 
| **geo_mappings** | list  | - | 
| **priority** | string  | - | 
| **subnet** | block  | - | 
| **id** | string  | The ID of the Azure Endpoint. | 