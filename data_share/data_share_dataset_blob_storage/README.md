# azurerm_data_share_dataset_blob_storage

Manages a Data Share Blob Storage Dataset.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.data_share_id** | string | True | -  |  -  | The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.container_name** | string | True | -  |  -  | The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.storage_account** | block | True | -  |  -  | A `storage_account` block. Changing this forces a new resource to be created. | 
| **var.file_path** | string | False | -  |  -  | The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.folder_path** | string | False | -  |  -  | The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_share_id** | string  | - | 
| **container_name** | string  | - | 
| **storage_account** | block  | - | 
| **file_path** | string  | - | 
| **folder_path** | string  | - | 
| **id** | string  | The ID of the Data Share Blob Storage Dataset. | 
| **display_name** | string  | The name of the Data Share Dataset. | 