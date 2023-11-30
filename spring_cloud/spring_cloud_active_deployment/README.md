# azurerm_spring_cloud_active_deployment

Manages an Active Azure Spring Cloud Deployment.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.spring_cloud_app_id** | string | True | Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.deployment_name** | string | True | Specifies the name of Spring Cloud Deployment which is going to be active. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **spring_cloud_app_id** | string  | - | 
| **deployment_name** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Active Deployment. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_active_deployment" 
}

inputs = {
   spring_cloud_app_id = "spring_cloud_app_id of spring_cloud_active_deployment" 
   deployment_name = "deployment_name of spring_cloud_active_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```