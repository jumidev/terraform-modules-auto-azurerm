# azurerm_spring_cloud_api_portal

Manages a Spring Cloud API Portal.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`. | 
| **spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created. | 
| **gateway_ids** | string | False | -  |  -  | Specifies a list of Spring Cloud Gateway. | 
| **https_only_enabled** | bool | False | -  |  -  | is only https is allowed? | 
| **instance_count** | int | False | `1`  |  -  | Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **public_network_access_enabled** | bool | False | -  |  -  | Is the public network access enabled? | 
| **sso** | block | False | -  |  -  | A `sso` block. | 

