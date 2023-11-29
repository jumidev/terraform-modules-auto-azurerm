# azurerm_dev_center_project

Manages a Dev Center Project.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **dev_center_id** | string | True | -  |  -  | Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 
| **name** | string | True | -  |  -  | Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 
| **description** | string | False | -  |  -  | Description of the project. Changing this forces a new Dev Center Project to be created. | 
| **maximum_dev_boxes_per_user** | int | False | -  |  -  | When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Dev Center Project. | 

