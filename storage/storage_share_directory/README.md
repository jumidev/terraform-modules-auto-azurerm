# azurerm_storage_share_directory

Manages a Directory within an Azure Storage File Share.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created. | 
| **share_name** | string | True | -  |  -  | The name of the File Share where this Directory should be created. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | The name of the Storage Account within which the File Share is located. Changing this forces a new resource to be created. | 
| **metadata** | string | False | -  |  -  | A mapping of metadata to assign to this Directory. | 

