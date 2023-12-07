# azurerm_spring_cloud_build_deployment

Manages a Spring Cloud Build Deployment.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_build_deployment"   
}

inputs = {
   name = "The name which should be used for this Spring Cloud Build Deployment..."   
   # spring_cloud_app_id → set in tfstate_inputs
   build_result_id = "The ID of the Spring Cloud Build Result"   
}

tfstate_inputs = {
   spring_cloud_app_id = "path/to/spring_cloud_app_component:id"   
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
| **name** | string |  The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created. | 
| **spring_cloud_app_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created. | 
| **build_result_id** | string |  The ID of the Spring Cloud Build Result. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **addon_json** | string |  -  |  -  |  A JSON object that contains the addon configurations of the Spring Cloud Build Deployment. | 
| **environment_variables** | string |  -  |  -  |  Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **instance_count** | string |  `1`  |  `1`, `500`  |  Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **quota** | [block](#quota-block-structure) |  -  |  -  |  A `quota` block. | 

### `quota` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cpu` | string | No | 1 | Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified. |
| `memory` | string | No | 1Gi | Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '1Gi' if not specified. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Build Deployment. | 

Additionally, all variables are provided as outputs.
