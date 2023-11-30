# azurerm_spring_cloud_java_deployment

Manages an Azure Spring Cloud Deployment with a Java runtime.-> **NOTE:** This resource is applicable only for Spring Cloud Service with basic and standard tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_java_deployment" 
}

inputs = {
   name = "name of spring_cloud_java_deployment" 
   spring_cloud_app_id = "spring_cloud_app_id of spring_cloud_java_deployment" 
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
| **var.name** | string | True | -  |  Specifies the name of the Spring Cloud Deployment. Changing this forces a new resource to be created. | 
| **var.spring_cloud_app_id** | string | True | -  |  Specifies the id of the Spring Cloud Application in which to create the Deployment. Changing this forces a new resource to be created. | 
| **var.environment_variables** | string | False | -  |  Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs. | 
| **var.instance_count** | int | False | `1`  |  Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.jvm_options** | string | False | -  |  Specifies the jvm option of the Spring Cloud Deployment. | 
| **var.quota** | block | False | -  |  A `quota` block. | 
| **var.runtime_version** | string | False | `Java_8`  |  Specifies the runtime version of the Spring Cloud Deployment. Possible Values are `Java_8`, `Java_11` and `Java_17`. Defaults to `Java_8`. | 

### `quota` block structure

>`cpu` (string): Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified.
>`memory` (string): Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '1Gi' if not specified.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Deployment. | 

Additionally, all variables are provided as outputs.
