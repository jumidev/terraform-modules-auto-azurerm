# azurerm_spring_cloud_gateway_custom_domain

Manages a Spring Cloud Gateway Custom Domain.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created. | 
| **var.spring_cloud_gateway_id** | string | True | -  |  -  | The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created. | 
| **var.thumbprint** | string | False | -  |  -  | Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_gateway_id** | string  | - | 
| **thumbprint** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Gateway Custom Domain. | 