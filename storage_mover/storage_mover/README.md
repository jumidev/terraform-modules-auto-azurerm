# azurerm_storage_mover

Manages a Storage Mover.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created. | 
| **description** | string | False | -  |  -  | A description for the Storage Mover. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Storage Mover. | 

