# azurerm_data_factory_trigger_blob_event

Manages a Blob Event Trigger inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_trigger_blob_event" 
}

inputs = {
   name = "name of data_factory_trigger_blob_event" 
   data_factory_id = "data_factory_id of data_factory_trigger_blob_event" 
   storage_account_id = "storage_account_id of data_factory_trigger_blob_event" 
   events = "events of data_factory_trigger_blob_event" 
   pipeline = "pipeline of data_factory_trigger_blob_event" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created. | 
| **var.data_factory_id** | string | True | -  |  -  |  The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **var.storage_account_id** | string | True | -  |  -  |  The ID of Storage Account in which blob event will be listened. Changing this forces a new resource. | 
| **var.events** | string | True | -  |  `Microsoft.Storage.BlobCreated`, `Microsoft.Storage.BlobDeleted`  |  List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`. | 
| **var.pipeline** | block | True | -  |  -  |  One or more `pipeline` blocks. | 
| **var.activated** | bool | False | `True`  |  -  |  Specifies if the Data Factory Blob Event Trigger is activated. Defaults to `true`. | 
| **var.additional_properties** | string | False | -  |  -  |  A map of additional properties to associate with the Data Factory Blob Event Trigger. | 
| **var.annotations** | string | False | -  |  -  |  List of tags that can be used for describing the Data Factory Blob Event Trigger. | 
| **var.blob_path_begins_with** | string | False | -  |  -  |  The pattern that blob path starts with for trigger to fire. | 
| **var.blob_path_ends_with** | string | False | -  |  -  |  The pattern that blob path ends with for trigger to fire. | 
| **var.description** | string | False | -  |  -  |  The description for the Data Factory Blob Event Trigger. | 
| **var.ignore_empty_blobs** | string | False | -  |  -  |  are blobs with zero bytes ignored? | 

### `pipeline` block structure

> `name` (string): (REQUIRED) The Data Factory Pipeline name that the trigger will act on.\
> `parameters` (string): The Data Factory Pipeline parameters that the trigger will act on.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Blob Event Trigger. | 

Additionally, all variables are provided as outputs.
