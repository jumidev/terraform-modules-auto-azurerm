# azurerm_storage_table_entity

Manages an Entity within a Table in an Azure Storage Account.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.storage_account_name** | string | True | Specifies the storage account in which to create the storage table entity. Changing this forces a new resource to be created. | 
| **var.table_name** | string | True | The name of the storage table in which to create the storage table entity. Changing this forces a new resource to be created. | 
| **var.partition_key** | string | True | The key for the partition where the entity will be inserted/merged. Changing this forces a new resource. | 
| **var.row_key** | string | True | The key for the row where the entity will be inserted/merged. Changing this forces a new resource. | 
| **var.entity** | string | True | A map of key/value pairs that describe the entity to be inserted/merged in to the storage table. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **storage_account_name** | string  | - | 
| **table_name** | string  | - | 
| **partition_key** | string  | - | 
| **row_key** | string  | - | 
| **entity** | string  | - | 
| **id** | string  | The ID of the Entity within the Table in the Storage Account. | 