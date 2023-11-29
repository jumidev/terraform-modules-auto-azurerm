# azurerm_spring_cloud_gateway

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Gateway.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string | True | -  |  -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created. | 
| **var.api_metadata** | block | False | -  |  -  |  A `api_metadata` block. | 
| **var.application_performance_monitoring_types** | string | False | -  |  `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  |  Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **var.client_authorization** | block | False | -  |  -  |  A `client_authorization` block. | 
| **var.cors** | block | False | -  |  -  |  A `cors` block. | 
| **var.environment_variables** | string | False | -  |  -  |  Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **var.https_only** | string | False | -  |  -  |  is only https is allowed? | 
| **var.instance_count** | int | False | `1`  |  -  |  Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.public_network_access_enabled** | bool | False | -  |  -  |  Indicates whether the Spring Cloud Gateway exposes endpoint. | 
| **var.quota** | block | False | -  |  -  |  A `quota` block. | 
| **var.sensitive_environment_variables** | string | False | -  |  -  |  Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **var.sso** | block | False | -  |  -  |  A `sso` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **api_metadata** | block  | - | 
| **application_performance_monitoring_types** | string  | - | 
| **client_authorization** | block  | - | 
| **cors** | block  | - | 
| **environment_variables** | string  | - | 
| **https_only** | string  | - | 
| **instance_count** | int  | - | 
| **public_network_access_enabled** | bool  | - | 
| **quota** | block  | - | 
| **sensitive_environment_variables** | string  | - | 
| **sso** | block  | - | 
| **id** | string  | The ID of the Spring Cloud Gateway. | 
| **url** | string  | URL of the Spring Cloud Gateway, exposed when 'public_network_access_enabled' is true. | 