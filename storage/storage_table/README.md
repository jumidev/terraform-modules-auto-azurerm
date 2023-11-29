# azurerm_storage_table

Manages a Table within an Azure Storage Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created. | 
| **acl** | block | False | -  |  -  | One or more `acl` blocks. | 

