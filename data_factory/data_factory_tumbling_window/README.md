# azurerm_data_factory_tumbling_window

Manages a Tumbling Window Trigger inside an Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created. | 
| **data_factory_id** | string | True | -  |  -  | The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **frequency** | string | True | -  |  `Hour`, `Minute`, `Month`  | Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource. | 
| **interval** | string | True | -  |  -  | Specifies the interval of Tumbling Window. Changing this forces a new resource. | 
| **pipeline** | block | True | -  |  -  | A `pipeline` block. | 
| **start_time** | string | True | -  |  -  | Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource. | 
| **activated** | bool | False | `True`  |  -  | Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Tumbling Window Trigger. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Tumbling Window Trigger. | 
| **delay** | string | False | -  |  -  | Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Tumbling Window Trigger. | 
| **end_time** | string | False | -  |  -  | Specifies the end time of Tumbling Window, formatted as an RFC3339 string. | 
| **max_concurrency** | string | False | `50`  |  `1`, `50`  | The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`. | 
| **retry** | block | False | -  |  -  | A `retry` block. | 
| **trigger_dependency** | block | False | -  |  -  | One or more `trigger_dependency` block. | 

