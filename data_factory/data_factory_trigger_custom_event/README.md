# azurerm_data_factory_trigger_custom_event

Manages a Custom Event Trigger inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_trigger_custom_event" 
}

inputs = {
   name = "name of data_factory_trigger_custom_event" 
   data_factory_id = "data_factory_id of data_factory_trigger_custom_event" 
   eventgrid_topic_id = "eventgrid_topic_id of data_factory_trigger_custom_event" 
   events = "events of data_factory_trigger_custom_event" 
   pipeline = "pipeline of data_factory_trigger_custom_event" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created. | 
| **var.data_factory_id** | string | True | -  |  The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **var.eventgrid_topic_id** | string | True | -  |  The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource. | 
| **var.events** | string | True | -  |  List of events that will fire this trigger. At least one event must be specified. | 
| **var.pipeline** | block | True | -  |  One or more `pipeline` blocks. | 
| **var.activated** | bool | False | `True`  |  Specifies if the Data Factory Custom Event Trigger is activated. Defaults to `true`. | 
| **var.additional_properties** | string | False | -  |  A map of additional properties to associate with the Data Factory Custom Event Trigger. | 
| **var.annotations** | string | False | -  |  List of tags that can be used for describing the Data Factory Custom Event Trigger. | 
| **var.description** | string | False | -  |  The description for the Data Factory Custom Event Trigger. | 
| **var.subject_begins_with** | string | False | -  |  The pattern that event subject starts with for trigger to fire. | 
| **var.subject_ends_with** | string | False | -  |  The pattern that event subject ends with for trigger to fire. | 

### `pipeline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Data Factory Pipeline name that the trigger will act on. |
| `parameters` | string | No | - | The Data Factory Pipeline parameters that the trigger will act on. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Custom Event Trigger. | 

Additionally, all variables are provided as outputs.
