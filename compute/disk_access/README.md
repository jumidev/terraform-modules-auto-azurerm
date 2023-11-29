# azurerm_disk_access

Manages a Disk Access.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Disk Access. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Disk Access resource. | 