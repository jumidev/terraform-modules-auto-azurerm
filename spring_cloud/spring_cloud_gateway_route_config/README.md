# azurerm_spring_cloud_gateway_route_config

Manages a Spring Cloud Gateway Route Config.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_gateway_route_config"   
}

inputs = {
   name = "The name which should be used for this Spring Cloud Gateway Route Config..."   
   # spring_cloud_gateway_id → set in component_inputs
}

component_inputs = {
   spring_cloud_gateway_id = "path/to/spring_cloud_gateway_component:id"   
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
| **name** | string |  The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created. | 
| **spring_cloud_gateway_id** | string |  The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **filters** | list |  -  |  -  |  Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level. | 
| **predicates** | list |  -  |  -  |  Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request. | 
| **sso_validation_enabled** | bool |  -  |  -  |  Should the sso validation be enabled in app level? | 
| **route** | [block](#route-block-structure) |  -  |  -  |  One or more `route` blocks. | 
| **open_api** | [block](#open_api-block-structure) |  -  |  -  |  One or more `open_api` blocks. | 
| **protocol** | string |  `HTTP`  |  `HTTP`, `HTTPS`  |  Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`. Defaults to `HTTP`. | 
| **spring_cloud_app_id** | string |  -  |  -  |  The ID of the Spring Cloud App. | 

### `open_api` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `uri` | string | No | - | The URI of OpenAPI specification. |

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `order` | string | Yes | - | Specifies the route processing order. |
| `description` | string | No | - | Specifies the description which will be applied to methods in the generated OpenAPI documentation. |
| `filters` | list | No | - | Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response. |
| `predicates` | list | No | - | Specifies a list of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request. |
| `sso_validation_enabled` | bool | No | - | Should the sso validation be enabled? |
| `classification_tags` | string | No | - | Specifies the classification tags which will be applied to methods in the generated OpenAPI documentation. |
| `title` | string | No | - | Specifies the title which will be applied to methods in the generated OpenAPI documentation. |
| `token_relay` | string | No | - | Should pass currently-authenticated user's identity token to application service? |
| `uri` | string | No | - | Specifies the full uri which will override 'appName'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Gateway Route Config. | 

Additionally, all variables are provided as outputs.
