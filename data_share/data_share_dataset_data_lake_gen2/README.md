# azurerm_data_share_dataset_data_lake_gen2

Manages a Data Share Data Lake Gen2 Dataset.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **var.share_id** | string | True | -  |  -  | The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **var.file_system_name** | string | True | -  |  -  | The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **var.storage_account_id** | string | True | -  |  -  | The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **var.file_path** | string | False | -  |  -  | The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folder_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **var.folder_path** | string | False | -  |  -  | The folder path in the data lake file system to be shared with the receiver. Conflicts with `file_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **share_id** | string  | - | 
| **file_system_name** | string  | - | 
| **storage_account_id** | string  | - | 
| **file_path** | string  | - | 
| **folder_path** | string  | - | 
| **id** | string  | The resource ID of the Data Share Data Lake Gen2 Dataset. | 
| **display_name** | string  | The name of the Data Share Dataset. | 