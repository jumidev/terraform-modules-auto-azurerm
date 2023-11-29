# azurerm_storage_mover_project

Manages a Storage Mover Project.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created. | 
| **var.description** | string | False | Specifies a description for this Storage Mover Project. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_mover_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Storage Mover Project. | 