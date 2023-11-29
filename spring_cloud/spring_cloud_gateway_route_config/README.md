# azurerm_spring_cloud_gateway_route_config

Manages a Spring Cloud Gateway Route Config.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created. | 
| **spring_cloud_gateway_id** | string | True | -  |  -  | The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created. | 
| **filters** | string | False | -  |  -  | Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level. | 
| **predicates** | string | False | -  |  -  | Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request. | 
| **sso_validation_enabled** | bool | False | -  |  -  | Should the sso validation be enabled in app level? | 
| **route** | block | False | -  |  -  | One or more `route` blocks. | 
| **open_api** | block | False | -  |  -  | One or more `open_api` blocks. | 
| **protocol** | string | False | `HTTP`  |  `HTTP`, `HTTPS`  | Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`. Defaults to `HTTP`. | 
| **spring_cloud_app_id** | string | False | -  |  -  | The ID of the Spring Cloud App. | 

