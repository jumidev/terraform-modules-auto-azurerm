# azurerm_spring_cloud_custom_domain

Manages an Azure Spring Cloud Custom Domain.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created. | 
| **var.spring_cloud_app_id** | string | True | -  |  -  | Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created. | 
| **var.certificate_name** | string | False | -  |  -  | Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `thumbprint` is specified | 
| **var.thumbprint** | string | False | -  |  -  | Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `certificate_name` is specified. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_app_id** | string  | - | 
| **certificate_name** | string  | - | 
| **thumbprint** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Custom Domain. | 