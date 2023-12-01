# azurerm_data_share_dataset_blob_storage

Manages a Data Share Blob Storage Dataset.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_share/data_share_dataset_blob_storage" 
}

inputs = {
   name = "name of data_share_dataset_blob_storage" 
   data_share_id = "data_share_id of data_share_dataset_blob_storage" 
   container_name = "container_name of data_share_dataset_blob_storage" 
   storage_account = {
      example_storage_account = {
         resource_group_name = "TODO link to base.resource_group.name"   
         subscription_id = "TODO link to base.subscription.subscription_id"   
      }
  
   }
 
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
| **name** | string |  The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **data_share_id** | string |  The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **container_name** | string |  The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **storage_account** | [block](#storage_account-block-structure) |  A `storage_account` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **file_path** | string |  The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 
| **folder_path** | string |  The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. | 

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `resource_group_name` | string | Yes | - | The resource group name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. |
| `subscription_id` | string | Yes | - | The subscription id of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Share Blob Storage Dataset. | 
| **display_name** | string | No  | The name of the Data Share Dataset. | 

Additionally, all variables are provided as outputs.
