# azurerm_healthcare_workspace

Manages a Healthcare workspace

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the Healthcare Workspace. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Healthcare Workspace. | 