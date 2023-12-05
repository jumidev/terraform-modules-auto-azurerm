# azurerm_data_factory_tumbling_window

Manages a Tumbling Window Trigger inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_tumbling_window"   
}

inputs = {
   name = "name of data_factory_tumbling_window"   
   # data_factory_id → set in tfstate_inputs
   frequency = "frequency of data_factory_tumbling_window"   
   interval = "interval of data_factory_tumbling_window"   
   pipeline = {
      this_pipeline = {
         name = "..."         
      }
      
   }
   
   start_time = "start_time of data_factory_tumbling_window"   
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
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
| **name** | string |  -  |  Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created. | 
| **data_factory_id** | string |  -  |  The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource. | 
| **frequency** | string |  `Hour`, `Minute`, `Month`  |  Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource. | 
| **interval** | string |  -  |  Specifies the interval of Tumbling Window. Changing this forces a new resource. | 
| **pipeline** | [block](#pipeline-block-structure) |  -  |  A `pipeline` block. | 
| **start_time** | string |  -  |  Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **activated** | bool |  `True`  |  -  |  Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`. | 
| **additional_properties** | string |  -  |  -  |  A map of additional properties to associate with the Data Factory Tumbling Window Trigger. | 
| **annotations** | string |  -  |  -  |  List of tags that can be used for describing the Data Factory Tumbling Window Trigger. | 
| **delay** | string |  -  |  -  |  Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`. | 
| **description** | string |  -  |  -  |  The description for the Data Factory Tumbling Window Trigger. | 
| **end_time** | string |  -  |  -  |  Specifies the end time of Tumbling Window, formatted as an RFC3339 string. | 
| **max_concurrency** | string |  `50`  |  `1`, `50`  |  The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`. | 
| **retry** | [block](#retry-block-structure) |  -  |  -  |  A `retry` block. | 
| **trigger_dependency** | [block](#trigger_dependency-block-structure) |  -  |  -  |  One or more `trigger_dependency` block. | 

### `pipeline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Data Factory Pipeline name that the trigger will act on. |
| `parameters` | string | No | - | The Data Factory Pipeline parameters that the trigger will act on. |

### `retry` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | int | Yes | - | The maximum retry attempts if the pipeline run failed. |
| `interval` | string | No | 30 | The Interval in seconds between each retry if the pipeline run failed. Defaults to '30'. |

### `trigger_dependency` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `offset` | string | No | - | The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency. |
| `size` | string | No | - | The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss). |
| `trigger_name` | string | No | - | The dependency trigger name. If not specified, it will use self dependency. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Tumbling Window Trigger. | 

Additionally, all variables are provided as outputs.
