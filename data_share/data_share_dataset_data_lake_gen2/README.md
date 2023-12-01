# azurerm_data_share_dataset_data_lake_gen2

Manages a Data Share Data Lake Gen2 Dataset.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_share/data_share_dataset_data_lake_gen2" 
}

inputs = {
   name = "name of data_share_dataset_data_lake_gen2" 
   share_id = "share_id of data_share_dataset_data_lake_gen2" 
   file_system_name = "file_system_name of data_share_dataset_data_lake_gen2" 
   storage_account_id = "storage_account_id of data_share_dataset_data_lake_gen2" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **share_id** | string |  The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **file_system_name** | string |  The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **storage_account_id** | string |  The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **file_path** | string |  The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folder_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 
| **folder_path** | string |  The folder path in the data lake file system to be shared with the receiver. Conflicts with `file_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The resource ID of the Data Share Data Lake Gen2 Dataset. | 
| **display_name** | string | No  | The name of the Data Share Dataset. | 

Additionally, all variables are provided as outputs.
