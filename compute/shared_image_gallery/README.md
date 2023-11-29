# azurerm_shared_image_gallery

Manages a Shared Image Gallery.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  | A description for this Shared Image Gallery. | 
| **var.sharing** | block | False | -  |  -  | A `sharing` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the Shared Image Gallery. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **description** | string  | - | 
| **sharing** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Shared Image Gallery. | 
| **unique_name** | string  | The Unique Name for this Shared Image Gallery. | 
| **name** | string  | The community public name of the Shared Image Gallery. | 