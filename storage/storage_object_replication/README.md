# azurerm_storage_object_replication

Manages a Storage Object Replication.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **source_storage_account_id** | string | True | -  |  -  | The ID of the source storage account. Changing this forces a new Storage Object Replication to be created. | 
| **destination_storage_account_id** | string | True | -  |  -  | The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created. | 
| **rules** | block | True | -  |  -  | One or more `rules` blocks. | 

