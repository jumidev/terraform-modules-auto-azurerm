# azurerm_spring_cloud_gateway

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`. | 
| **spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created. | 
| **api_metadata** | block | False | -  |  -  | A `api_metadata` block. | 
| **application_performance_monitoring_types** | string | False | -  |  `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  | Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **client_authorization** | block | False | -  |  -  | A `client_authorization` block. | 
| **cors** | block | False | -  |  -  | A `cors` block. | 
| **environment_variables** | string | False | -  |  -  | Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **https_only** | string | False | -  |  -  | is only https is allowed? | 
| **instance_count** | int | False | `1`  |  -  | Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **public_network_access_enabled** | bool | False | -  |  -  | Indicates whether the Spring Cloud Gateway exposes endpoint. | 
| **quota** | block | False | -  |  -  | A `quota` block. | 
| **sensitive_environment_variables** | string | False | -  |  -  | Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **sso** | block | False | -  |  -  | A `sso` block. | 

