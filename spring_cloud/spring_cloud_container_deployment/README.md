# azurerm_spring_cloud_container_deployment

Manages a Spring Cloud Container Deployment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_container_deployment" 
}

inputs = {
   name = "name of spring_cloud_container_deployment" 
   spring_cloud_app_id = "spring_cloud_app_id of spring_cloud_container_deployment" 
   image = "image of spring_cloud_container_deployment" 
   server = "server of spring_cloud_container_deployment" 
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
| **var.name** | string | True | -  |  The name which should be used for this Spring Cloud Container Deployment. Changing this forces a new Spring Cloud Container Deployment to be created. | 
| **var.spring_cloud_app_id** | string | True | -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Container Deployment to be created. | 
| **var.image** | string | True | -  |  Container image of the custom container. This should be in the form of `<repository>:<tag>` without the server name of the registry. | 
| **var.server** | string | True | -  |  The name of the registry that contains the container image. | 
| **var.addon_json** | string | False | -  |  A JSON object that contains the addon configurations of the Spring Cloud Container Deployment. | 
| **var.application_performance_monitoring_ids** | string | False | -  |  Specifies a list of Spring Cloud Application Performance Monitoring IDs. | 
| **var.arguments** | string | False | -  |  Specifies the arguments to the entrypoint. The docker image's `CMD` is used if not specified. | 
| **var.commands** | string | False | -  |  Specifies the entrypoint array. It will not be executed within a shell. The docker image's `ENTRYPOINT` is used if not specified. | 
| **var.environment_variables** | string | False | -  |  Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **var.instance_count** | int | False | `1`  |  Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.language_framework** | string | False | -  |  Specifies the language framework of the container image. The only possible value is `springboot`. | 
| **var.quota** | block | False | -  |  A `quota` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Container Deployment. | 

Additionally, all variables are provided as outputs.
