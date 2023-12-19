# azurerm_spring_cloud_api_portal

Manages a Spring Cloud API Portal.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_api_portal"   
}

inputs = {
   name = "The name which should be used for this Spring Cloud API Portal..."   
   # spring_cloud_service_id → set in component_inputs
}

component_inputs = {
   spring_cloud_service_id = "path/to/spring_cloud_service_component:id"   
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
| **name** | string |  The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`. | 
| **spring_cloud_service_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **gateway_ids** | string |  -  |  -  |  Specifies a list of Spring Cloud Gateway. | 
| **https_only_enabled** | bool |  -  |  -  |  is only https is allowed? | 
| **instance_count** | string |  `1`  |  `1`, `500`  |  Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **public_network_access_enabled** | bool |  -  |  -  |  Is the public network access enabled? | 
| **sso** | [block](#sso-block-structure) |  -  |  -  |  A `sso` block. | 

### `sso` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | No | - | The public identifier for the application. |
| `client_secret` | string | No | - | The secret known only to the application and the authorization server. |
| `issuer_uri` | string | No | - | The URI of Issuer Identifier. |
| `scope` | string | No | - | It defines the specific actions applications can be allowed to do on a user's behalf. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud API Portal. | 
| **url** | string | No  | TODO. | 

Additionally, all variables are provided as outputs.
