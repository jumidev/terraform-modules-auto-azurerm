# azurerm_spring_cloud_customized_accelerator

Manages a Spring Cloud Customized Accelerator.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **git_repository** | block | True | -  |  -  | A `git_repository` block. | 
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **spring_cloud_accelerator_id** | string | True | -  |  -  | The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **accelerator_tags** | map | False | -  |  -  | Specifies a list of accelerator tags. | 
| **accelerator_type** | string | False | `Accelerator`  |  `Accelerator`, `Fragment`  | Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`. | 
| **description** | string | False | -  |  -  | Specifies the description of the Spring Cloud Customized Accelerator. | 
| **display_name** | string | False | -  |  -  | Specifies the display name of the Spring Cloud Customized Accelerator.. | 
| **icon_url** | string | False | -  |  -  | Specifies the icon URL of the Spring Cloud Customized Accelerator.. | 

