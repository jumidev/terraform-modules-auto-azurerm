# azurerm_media_transform

Manages a Transform.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Transform to be created. | 
| **var.name** | string | True | The name which should be used for this Transform. Changing this forces a new Transform to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Transform should exist. Changing this forces a new Transform to be created. | 
| **var.description** | string | False | An optional verbose description of the Transform. | 
| **var.output** | block | False | One or more `output` blocks. At least one `output` must be defined. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **output** | block  | - | 
| **id** | string  | The ID of the Transform. | 