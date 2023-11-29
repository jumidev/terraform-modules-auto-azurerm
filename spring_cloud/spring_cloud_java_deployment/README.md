# azurerm_spring_cloud_java_deployment

Manages an Azure Spring Cloud Deployment with a Java runtime.-> **NOTE:** This resource is applicable only for Spring Cloud Service with basic and standard tier.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created. | 
| **var.spring_cloud_app_id** | string | True | -  |  Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created. | 
| **var.environment_variables** | string | False | -  |  Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **var.instance_count** | int | False | `1`  |  Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.jvm_options** | string | False | -  |  Specifies the jvm option of the Spring Cloud Deployment. | 
| **var.quota** | block | False | -  |  A `quota` block. | 
| **var.runtime_version** | string | False | `Java_8`  |  Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_app_id** | string  | - | 
| **environment_variables** | string  | - | 
| **instance_count** | int  | - | 
| **jvm_options** | string  | - | 
| **quota** | block  | - | 
| **runtime_version** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Deployment. | 