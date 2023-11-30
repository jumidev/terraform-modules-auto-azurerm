# azurerm_spring_cloud_build_deployment

Manages a Spring Cloud Build Deployment.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_build_deployment" 
}

inputs = {
   name = "name of spring_cloud_build_deployment" 
   spring_cloud_app_id = "spring_cloud_app_id of spring_cloud_build_deployment" 
   build_result_id = "build_result_id of spring_cloud_build_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created. | 
| **var.spring_cloud_app_id** | string | True | -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created. | 
| **var.build_result_id** | string | True | -  |  The ID of the Spring Cloud Build Result. | 
| **var.addon_json** | string | False | -  |  A JSON object that contains the addon configurations of the Spring Cloud Build Deployment. | 
| **var.environment_variables** | string | False | -  |  Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **var.instance_count** | int | False | `1`  |  Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.quota** | block | False | -  |  A `quota` block. | 

### `quota` block structure

> `cpu` (string): Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified.\
> `memory` (string): Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '1Gi' if not specified.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Build Deployment. | 

Additionally, all variables are provided as outputs.
