# azurerm_spring_cloud_active_deployment

Manages an Active Azure Spring Cloud Deployment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.spring_cloud_app_id** | string | True | -  |  -  | Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.deployment_name** | string | True | -  |  -  | Specifies the name of Spring Cloud Deployment which is going to be active. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **spring_cloud_app_id** | string  | - | 
| **deployment_name** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Active Deployment. | 