# azurerm_data_factory_trigger_blob_event

Manages a Blob Event Trigger inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_trigger_blob_event"   
}

inputs = {
   name = "name of data_factory_trigger_blob_event"   
   # data_factory_id → set in tfstate_inputs
   # storage_account_id → set in tfstate_inputs
   events = "events of data_factory_trigger_blob_event"   
   pipeline = {
      this_pipeline = {
         name = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
   storage_account_id = "path/to/storage_account_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created. | 
| **data_factory_id** | string |  -  |  The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **storage_account_id** | string |  -  |  The ID of Storage Account in which blob event will be listened. Changing this forces a new resource. | 
| **events** | string |  `Microsoft.Storage.BlobCreated`, `Microsoft.Storage.BlobDeleted`  |  List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`. | 
| **pipeline** | [block](#pipeline-block-structure) |  -  |  One or more `pipeline` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **activated** | bool |  `True`  |  Specifies if the Data Factory Blob Event Trigger is activated. Defaults to `true`. | 
| **additional_properties** | string |  -  |  A map of additional properties to associate with the Data Factory Blob Event Trigger. | 
| **annotations** | string |  -  |  List of tags that can be used for describing the Data Factory Blob Event Trigger. | 
| **blob_path_begins_with** | string |  -  |  The pattern that blob path starts with for trigger to fire. | 
| **blob_path_ends_with** | string |  -  |  The pattern that blob path ends with for trigger to fire. | 
| **description** | string |  -  |  The description for the Data Factory Blob Event Trigger. | 
| **ignore_empty_blobs** | string |  -  |  are blobs with zero bytes ignored? | 

### `pipeline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Data Factory Pipeline name that the trigger will act on. |
| `parameters` | string | No | - | The Data Factory Pipeline parameters that the trigger will act on. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Blob Event Trigger. | 

Additionally, all variables are provided as outputs.
