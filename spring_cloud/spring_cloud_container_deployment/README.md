# azurerm_spring_cloud_container_deployment

Manages a Spring Cloud Container Deployment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Container Deployment. Changing this forces a new Spring Cloud Container Deployment to be created. | 
| **spring_cloud_app_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Container Deployment to be created. | 
| **image** | string | True | -  |  -  | Container image of the custom container. This should be in the form of `<repository>:<tag>` without the server name of the registry. | 
| **server** | string | True | -  |  -  | The name of the registry that contains the container image. | 
| **addon_json** | string | False | -  |  -  | A JSON object that contains the addon configurations of the Spring Cloud Container Deployment. | 
| **application_performance_monitoring_ids** | string | False | -  |  -  | Specifies a list of Spring Cloud Application Performance Monitoring IDs. | 
| **arguments** | string | False | -  |  -  | Specifies the arguments to the entrypoint. The docker image's `CMD` is used if not specified. | 
| **commands** | string | False | -  |  -  | Specifies the entrypoint array. It will not be executed within a shell. The docker image's `ENTRYPOINT` is used if not specified. | 
| **environment_variables** | string | False | -  |  -  | Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **instance_count** | int | False | `1`  |  -  | Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **language_framework** | string | False | -  |  -  | Specifies the language framework of the container image. The only possible value is `springboot`. | 
| **quota** | block | False | -  |  -  | A `quota` block. | 

