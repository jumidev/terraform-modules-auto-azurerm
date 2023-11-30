# azurerm_spring_cloud_gateway_route_config

Manages a Spring Cloud Gateway Route Config.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_gateway_route_config" 
}

inputs = {
   name = "name of spring_cloud_gateway_route_config" 
   spring_cloud_gateway_id = "spring_cloud_gateway_id of spring_cloud_gateway_route_config" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created. | 
| **var.spring_cloud_gateway_id** | string | True | -  |  -  |  The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created. | 
| **var.filters** | string | False | -  |  -  |  Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level. | 
| **var.predicates** | string | False | -  |  -  |  Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request. | 
| **var.sso_validation_enabled** | bool | False | -  |  -  |  Should the sso validation be enabled in app level? | 
| **var.route** | block | False | -  |  -  |  One or more `route` blocks. | 
| **var.open_api** | block | False | -  |  -  |  One or more `open_api` blocks. | 
| **var.protocol** | string | False | `HTTP`  |  `HTTP`, `HTTPS`  |  Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`. Defaults to `HTTP`. | 
| **var.spring_cloud_app_id** | string | False | -  |  -  |  The ID of the Spring Cloud App. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Gateway Route Config. | 

Additionally, all variables are provided as outputs.
