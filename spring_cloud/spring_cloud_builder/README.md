# azurerm_spring_cloud_builder

Manages a Spring Cloud Builder.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created. | 
| **var.spring_cloud_service_id** | string | True | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created. | 
| **var.build_pack_group** | block | True | One or more `build_pack_group` blocks. | 
| **var.stack** | block | True | A `stack` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_service_id** | string  | - | 
| **build_pack_group** | block  | - | 
| **stack** | block  | - | 
| **id** | string  | The ID of the Spring Cloud Builder. | 