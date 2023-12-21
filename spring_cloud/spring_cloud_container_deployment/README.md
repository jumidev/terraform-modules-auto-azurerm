# azurerm_spring_cloud_container_deployment

Manages a Spring Cloud Container Deployment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_container_deployment"   
}

inputs = {
   name = "The name which should be used for this Spring Cloud Container Deployment..."   
   # spring_cloud_app_id → set in component_inputs
   image = "Container image of the custom container"   
   server = "The name of the registry that contains the container image..."   
}

component_inputs = {
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
| **name** | string |  The name which should be used for this Spring Cloud Container Deployment. Changing this forces a new Spring Cloud Container Deployment to be created. | 
| **spring_cloud_app_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Container Deployment to be created. | 
| **image** | string |  Container image of the custom container. This should be in the form of `<repository>:<tag>` without the server name of the registry. | 
| **server** | string |  The name of the registry that contains the container image. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **addon_json** | string |  -  |  -  |  A JSON object that contains the addon configurations of the Spring Cloud Container Deployment. | 
| **application_performance_monitoring_ids** | list |  -  |  -  |  Specifies a list of Spring Cloud Application Performance Monitoring IDs. | 
| **arguments** | string |  -  |  `CMD`  |  Specifies the arguments to the entrypoint. The docker image's `CMD` is used if not specified. | 
| **commands** | string |  -  |  `ENTRYPOINT`  |  Specifies the entrypoint array. It will not be executed within a shell. The docker image's `ENTRYPOINT` is used if not specified. | 
| **environment_variables** | string |  -  |  -  |  Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **instance_count** | string |  `1`  |  `1`, `500`  |  Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **language_framework** | string |  -  |  `springboot`  |  Specifies the language framework of the container image. The only possible value is `springboot`. | 
| **quota** | [block](#quota-block-structure) |  -  |  -  |  A `quota` block. | 

### `quota` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cpu` | string | No | 1 | Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified. |
| `memory` | string | No | 1Gi | Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '1Gi' if not specified. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Container Deployment. | 

Additionally, all variables are provided as outputs.
