# azurerm_spring_cloud_customized_accelerator

Manages a Spring Cloud Customized Accelerator.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.git_repository** | block | True | -  |  -  |  A `git_repository` block. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **var.spring_cloud_accelerator_id** | string | True | -  |  -  |  The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **var.accelerator_tags** | map | False | -  |  -  |  Specifies a list of accelerator tags. | 
| **var.accelerator_type** | string | False | `Accelerator`  |  `Accelerator`, `Fragment`  |  Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`. | 
| **var.description** | string | False | -  |  -  |  Specifies the description of the Spring Cloud Customized Accelerator. | 
| **var.display_name** | string | False | -  |  -  |  Specifies the display name of the Spring Cloud Customized Accelerator.. | 
| **var.icon_url** | string | False | -  |  -  |  Specifies the icon URL of the Spring Cloud Customized Accelerator.. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **git_repository** | block  | - | 
| **name** | string  | - | 
| **spring_cloud_accelerator_id** | string  | - | 
| **accelerator_tags** | map  | - | 
| **accelerator_type** | string  | - | 
| **description** | string  | - | 
| **display_name** | string  | - | 
| **icon_url** | string  | - | 
| **id** | string  | The ID of the Spring Cloud Customized Accelerator. | 