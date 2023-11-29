# azurerm_spring_cloud_api_portal_custom_domain

Manages a Spring Cloud API Portal Domain.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created. | 
| **var.spring_cloud_api_portal_id** | string | True | -  |  -  | The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created. | 
| **var.thumbprint** | string | False | -  |  -  | Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_api_portal_id** | string  | - | 
| **thumbprint** | string  | - | 
| **id** | string  | The ID of the Spring Cloud API Portal Domain. | 