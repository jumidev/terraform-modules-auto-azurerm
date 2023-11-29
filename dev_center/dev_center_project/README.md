# azurerm_dev_center_project

Manages a Dev Center Project.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.dev_center_id** | string | True | Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created. | 
| **var.location** | string | True | The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 
| **var.name** | string | True | Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 
| **var.description** | string | False | Description of the project. Changing this forces a new Dev Center Project to be created. | 
| **var.maximum_dev_boxes_per_user** | int | False | When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Dev Center Project. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **dev_center_id** | string  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **maximum_dev_boxes_per_user** | int  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Dev Center Project. | 
| **dev_center_uri** | string  | The URI of the Dev Center resource this project is associated with. | 