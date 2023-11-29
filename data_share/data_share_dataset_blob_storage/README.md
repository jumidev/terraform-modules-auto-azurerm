# azurerm_data_share_dataset_blob_storage

Manages a Data Share Blob Storage Dataset.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **data_share_id** | string | True | -  |  -  | The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **container_name** | string | True | -  |  -  | The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **storage_account** | block | True | -  |  -  | A `storage_account` block. Changing this forces a new resource to be created. | 
| **file_path** | string | False | -  |  -  | The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **folder_path** | string | False | -  |  -  | The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 

