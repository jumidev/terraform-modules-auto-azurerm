# azurerm_data_share_dataset_blob_storage

Manages a Data Share Blob Storage Dataset.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_share/data_share_dataset_blob_storage" 
}

inputs = {
   name = "name of data_share_dataset_blob_storage" 
   data_share_id = "data_share_id of data_share_dataset_blob_storage" 
   container_name = "container_name of data_share_dataset_blob_storage" 
   storage_account = "storage_account of data_share_dataset_blob_storage" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.data_share_id** | string | True | The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.container_name** | string | True | The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.storage_account** | block | True | A `storage_account` block. Changing this forces a new resource to be created. | 
| **var.file_path** | string | False | The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **var.folder_path** | string | False | The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 

### `storage_account` block structure

> `name` (string): (REQUIRED) The name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.\
> `resource_group_name` (string): (REQUIRED) The resource group name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.\
> `subscription_id` (string): (REQUIRED) The subscription id of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Share Blob Storage Dataset. | 
| **display_name** | string | No  | The name of the Data Share Dataset. | 

Additionally, all variables are provided as outputs.
