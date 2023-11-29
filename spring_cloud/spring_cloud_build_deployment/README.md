# azurerm_spring_cloud_build_deployment

Manages a Spring Cloud Build Deployment.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_app_id** | string  | - | 
| **build_result_id** | string  | - | 
| **addon_json** | string  | - | 
| **environment_variables** | string  | - | 
| **instance_count** | int  | - | 
| **quota** | block  | - | 
| **id** | string  | The ID of the Spring Cloud Build Deployment. | 