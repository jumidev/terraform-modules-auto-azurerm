# azurerm_data_factory_tumbling_window

Manages a Tumbling Window Trigger inside an Azure Data Factory.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created. | 
| **var.data_factory_id** | string | True | -  |  -  |  The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **var.frequency** | string | True | -  |  `Hour`, `Minute`, `Month`  |  Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource. | 
| **var.interval** | string | True | -  |  -  |  Specifies the interval of Tumbling Window. Changing this forces a new resource. | 
| **var.pipeline** | block | True | -  |  -  |  A `pipeline` block. | 
| **var.start_time** | string | True | -  |  -  |  Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource. | 
| **var.activated** | bool | False | `True`  |  -  |  Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`. | 
| **var.additional_properties** | string | False | -  |  -  |  A map of additional properties to associate with the Data Factory Tumbling Window Trigger. | 
| **var.annotations** | string | False | -  |  -  |  List of tags that can be used for describing the Data Factory Tumbling Window Trigger. | 
| **var.delay** | string | False | -  |  -  |  Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`. | 
| **var.description** | string | False | -  |  -  |  The description for the Data Factory Tumbling Window Trigger. | 
| **var.end_time** | string | False | -  |  -  |  Specifies the end time of Tumbling Window, formatted as an RFC3339 string. | 
| **var.max_concurrency** | string | False | `50`  |  `1`, `50`  |  The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`. | 
| **var.retry** | block | False | -  |  -  |  A `retry` block. | 
| **var.trigger_dependency** | block | False | -  |  -  |  One or more `trigger_dependency` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **frequency** | string  | - | 
| **interval** | string  | - | 
| **pipeline** | block  | - | 
| **start_time** | string  | - | 
| **activated** | bool  | - | 
| **additional_properties** | string  | - | 
| **annotations** | string  | - | 
| **delay** | string  | - | 
| **description** | string  | - | 
| **end_time** | string  | - | 
| **max_concurrency** | string  | - | 
| **retry** | block  | - | 
| **trigger_dependency** | block  | - | 
| **id** | string  | The ID of the Data Factory Tumbling Window Trigger. | 