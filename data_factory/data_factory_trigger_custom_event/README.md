# azurerm_data_factory_trigger_custom_event

Manages a Custom Event Trigger inside an Azure Data Factory.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **eventgrid_topic_id** | string  | - | 
| **events** | string  | - | 
| **pipeline** | block  | - | 
| **activated** | bool  | - | 
| **additional_properties** | string  | - | 
| **annotations** | string  | - | 
| **description** | string  | - | 
| **subject_begins_with** | string  | - | 
| **subject_ends_with** | string  | - | 
| **id** | string  | The ID of the Data Factory Custom Event Trigger. | 