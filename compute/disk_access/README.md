# azurerm_disk_access

Manages a Disk Access.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Disk Access. | 

