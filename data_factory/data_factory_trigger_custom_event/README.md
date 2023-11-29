# azurerm_data_factory_trigger_custom_event

Manages a Custom Event Trigger inside an Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created. | 
| **data_factory_id** | string | True | -  |  -  | The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **eventgrid_topic_id** | string | True | -  |  -  | The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource. | 
| **events** | string | True | -  |  -  | List of events that will fire this trigger. At least one event must be specified. | 
| **pipeline** | block | True | -  |  -  | One or more `pipeline` blocks. | 
| **activated** | bool | False | `True`  |  -  | Specifies if the Data Factory Custom Event Trigger is activated. Defaults to `true`. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Custom Event Trigger. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Custom Event Trigger. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Custom Event Trigger. | 
| **subject_begins_with** | string | False | -  |  -  | The pattern that event subject starts with for trigger to fire. | 
| **subject_ends_with** | string | False | -  |  -  | The pattern that event subject ends with for trigger to fire. | 

