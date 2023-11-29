# azurerm_spring_cloud_application_live_view

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Application Live View.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string | True | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Application Live View. | 