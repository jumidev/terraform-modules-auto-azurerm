# azurerm_data_factory_trigger_schedule

Manages a Trigger Schedule inside a Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **description** | string | False | -  |  -  | The Schedule Trigger's description. | 
| **schedule** | block | False | -  |  -  | A `schedule` block, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the `frequency` and `interval` properties. | 
| **start_time** | string | False | -  |  -  | The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC. | 
| **time_zone** | string | False | -  |  -  | The timezone of the start/end time. | 
| **end_time** | string | False | -  |  -  | The time the Schedule Trigger should end. The time will be represented in UTC. | 
| **interval** | string | False | `1`  |  -  | The interval for how often the trigger occurs. This defaults to `1`. | 
| **frequency** | string | False | `Minute`  |  `Minute`, `Hour`, `Day`, `Week`, `Month`  | The trigger frequency. Valid values include `Minute`, `Hour`, `Day`, `Week`, `Month`. Defaults to `Minute`. | 
| **activated** | bool | False | `True`  |  -  | Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`. | 
| **pipeline** | block | False | -  |  -  | A `pipeline` block. | 
| **pipeline_name** | string | False | -  |  -  | The Data Factory Pipeline name that the trigger will act on. | 
| **pipeline_parameters** | string | False | -  |  -  | The pipeline parameters that the trigger will act upon. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Schedule Trigger. | 

