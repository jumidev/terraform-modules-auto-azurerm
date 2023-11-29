# azurerm_storage_blob_inventory_policy

Manages a Storage Blob Inventory Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **storage_account_id** | string | True | -  |  -  | The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created. | 
| **rules** | block | True | -  |  -  | One or more `rules` blocks. | 

