# azurerm_storage_sync_group

Manages a Storage Sync Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created. | 
| **var.storage_sync_id** | string | True | The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_sync_id** | string  | - | 
| **id** | string  | The ID of the Storage Sync Group. | 