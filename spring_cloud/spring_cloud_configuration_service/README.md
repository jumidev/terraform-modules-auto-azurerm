# azurerm_spring_cloud_configuration_service

Manages a Spring Cloud Configuration Service.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created. | 
| **var.spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created. | 
| **var.generation** | string | False | -  |  `Gen1`, `Gen2`  | The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`. | 
| **var.repository** | block | False | -  |  -  | One or more `repository` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **generation** | string  | - | 
| **repository** | block  | - | 
| **id** | string  | The ID of the Spring Cloud Configuration Service. | 