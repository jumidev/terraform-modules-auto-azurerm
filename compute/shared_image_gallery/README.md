# azurerm_shared_image_gallery

Manages a Shared Image Gallery.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | A description for this Shared Image Gallery. | 
| **sharing** | block | False | -  |  -  | A `sharing` block. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Shared Image Gallery. | 

