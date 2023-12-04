# azurerm_data_factory_trigger_custom_event

Manages a Custom Event Trigger inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_trigger_custom_event" 
}

inputs = {
   name = "name of data_factory_trigger_custom_event" 
   # data_factory_id → set in tfstate_inputs
   # eventgrid_topic_id → set in tfstate_inputs
   events = "events of data_factory_trigger_custom_event" 
   pipeline = {
      example_pipeline = {
      }
  
   }
 
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id" 
   eventgrid_topic_id = "path/to/eventgrid_topic_component:id" 
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
| **name** | string |  Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created. | 
| **data_factory_id** | string |  The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **eventgrid_topic_id** | string |  The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource. | 
| **events** | string |  List of events that will fire this trigger. At least one event must be specified. | 
| **pipeline** | [block](#pipeline-block-structure) |  One or more `pipeline` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **activated** | bool |  `True`  |  Specifies if the Data Factory Custom Event Trigger is activated. Defaults to `true`. | 
| **additional_properties** | string |  -  |  A map of additional properties to associate with the Data Factory Custom Event Trigger. | 
| **annotations** | string |  -  |  List of tags that can be used for describing the Data Factory Custom Event Trigger. | 
| **description** | string |  -  |  The description for the Data Factory Custom Event Trigger. | 
| **subject_begins_with** | string |  -  |  The pattern that event subject starts with for trigger to fire. | 
| **subject_ends_with** | string |  -  |  The pattern that event subject ends with for trigger to fire. | 

### `pipeline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | The Data Factory Pipeline parameters that the trigger will act on. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Custom Event Trigger. | 

Additionally, all variables are provided as outputs.
