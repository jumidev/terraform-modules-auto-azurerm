# azurerm_traffic_manager_external_endpoint

Manages an External Endpoint within a Traffic Manager Profile.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the External Endpoint. Changing this forces a new resource to be created. | 
| **profile_id** | string | True | -  |  -  | The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created. | 
| **target** | string | True | -  |  -  | The FQDN DNS name of the target. | 
| **weight** | string | False | -  |  `1`, `1000`  | Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. | 
| **endpoint_location** | string | False | -  |  -  | Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method. | 
| **custom_header** | block | False | -  |  -  | One or more `custom_header` blocks. | 
| **enabled** | bool | False | `True`  |  -  | Is the endpoint enabled? Defaults to `true`. | 
| **geo_mappings** | list | False | -  |  -  | A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault). | 
| **priority** | string | False | -  |  -  | Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation. | 
| **subnet** | block | False | -  |  -  | One or more `subnet` blocks. Changing this forces a new resource to be created. | 

