# azurerm_data_factory_trigger_blob_event

Manages a Blob Event Trigger inside an Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created. | 
| **data_factory_id** | string | True | -  |  -  | The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **storage_account_id** | string | True | -  |  -  | The ID of Storage Account in which blob event will be listened. Changing this forces a new resource. | 
| **events** | string | True | -  |  `Microsoft.Storage.BlobCreated`, `Microsoft.Storage.BlobDeleted`  | List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`. | 
| **pipeline** | block | True | -  |  -  | One or more `pipeline` blocks. | 
| **activated** | bool | False | `True`  |  -  | Specifies if the Data Factory Blob Event Trigger is activated. Defaults to `true`. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Blob Event Trigger. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Blob Event Trigger. | 
| **blob_path_begins_with** | string | False | -  |  -  | The pattern that blob path starts with for trigger to fire. | 
| **blob_path_ends_with** | string | False | -  |  -  | The pattern that blob path ends with for trigger to fire. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Blob Event Trigger. | 
| **ignore_empty_blobs** | string | False | -  |  -  | are blobs with zero bytes ignored? | 

