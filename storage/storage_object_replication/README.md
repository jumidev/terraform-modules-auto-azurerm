# azurerm_storage_object_replication

Manages a Storage Object Replication.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.source_storage_account_id** | string | True | -  |  -  | The ID of the source storage account. Changing this forces a new Storage Object Replication to be created. | 
| **var.destination_storage_account_id** | string | True | -  |  -  | The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created. | 
| **var.rules** | block | True | -  |  -  | One or more `rules` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **source_storage_account_id** | string  | - | 
| **destination_storage_account_id** | string  | - | 
| **rules** | block  | - | 
| **id** | string  | The ID of the Storage Object Replication in the destination storage account. It's composed as format `source_object_replication_id;destination_object_replication_id`. | 
| **source_object_replication_id** | string  | The ID of the Object Replication in the source storage account. | 
| **destination_object_replication_id** | string  | The ID of the Object Replication in the destination storage account. | 