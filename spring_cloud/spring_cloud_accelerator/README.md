# azurerm_spring_cloud_accelerator

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Accelerator.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Accelerator. | 