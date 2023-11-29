# azurerm_media_transform

Manages a Transform.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Transform to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Transform. Changing this forces a new Transform to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Transform should exist. Changing this forces a new Transform to be created. | 
| **description** | string | False | -  |  -  | An optional verbose description of the Transform. | 
| **output** | block | False | -  |  -  | One or more `output` blocks. At least one `output` must be defined. | 

