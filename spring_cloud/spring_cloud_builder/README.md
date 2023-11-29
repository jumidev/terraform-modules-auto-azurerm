# azurerm_spring_cloud_builder

Manages a Spring Cloud Builder.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created. | 
| **spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created. | 
| **build_pack_group** | block | True | -  |  -  | One or more `build_pack_group` blocks. | 
| **stack** | block | True | -  |  -  | A `stack` block. | 

