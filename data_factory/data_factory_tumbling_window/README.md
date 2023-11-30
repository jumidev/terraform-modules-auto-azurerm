# azurerm_data_factory_tumbling_window

Manages a Tumbling Window Trigger inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_tumbling_window" 
}

inputs = {
   name = "name of data_factory_tumbling_window" 
   data_factory_id = "data_factory_id of data_factory_tumbling_window" 
   frequency = "frequency of data_factory_tumbling_window" 
   interval = "interval of data_factory_tumbling_window" 
   pipeline = "pipeline of data_factory_tumbling_window" 
   start_time = "start_time of data_factory_tumbling_window" 
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

### `pipeline` block structure

> `name` (string): (REQUIRED) The Data Factory Pipeline name that the trigger will act on.
> `parameters` (string): The Data Factory Pipeline parameters that the trigger will act on.

### `retry` block structure

> `count` (int): (REQUIRED) The maximum retry attempts if the pipeline run failed.
> `interval` (string): The Interval in seconds between each retry if the pipeline run failed. Defaults to '30'.

### `trigger_dependency` block structure

> `offset` (string): The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency.
> `size` (string): The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss).
> `trigger_name` (string): The dependency trigger name. If not specified, it will use self dependency.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Tumbling Window Trigger. | 

Additionally, all variables are provided as outputs.
