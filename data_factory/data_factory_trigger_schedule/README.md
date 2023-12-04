# azurerm_data_factory_trigger_schedule

Manages a Trigger Schedule inside a Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_trigger_schedule" 
}

inputs = {
   name = "name of data_factory_trigger_schedule" 
   data_factory_id = "data_factory_id of data_factory_trigger_schedule" 
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
| **name** | string |  Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **description** | string |  -  |  -  |  The Schedule Trigger's description. | 
| **schedule** | [block](#schedule-block-structure) |  -  |  -  |  A `schedule` block, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the `frequency` and `interval` properties. | 
| **start_time** | string |  -  |  -  |  The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC. | 
| **time_zone** | string |  -  |  -  |  The timezone of the start/end time. | 
| **end_time** | string |  -  |  -  |  The time the Schedule Trigger should end. The time will be represented in UTC. | 
| **interval** | string |  `1`  |  -  |  The interval for how often the trigger occurs. This defaults to `1`. | 
| **frequency** | string |  `Minute`  |  `Minute`, `Hour`, `Day`, `Week`, `Month`  |  The trigger frequency. Valid values include `Minute`, `Hour`, `Day`, `Week`, `Month`. Defaults to `Minute`. | 
| **activated** | bool |  `True`  |  -  |  Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`. | 
| **pipeline** | [block](#pipeline-block-structure) |  -  |  -  |  A `pipeline` block. | 
| **pipeline_name** | string |  -  |  -  |  The Data Factory Pipeline name that the trigger will act on. | 
| **pipeline_parameters** | string |  -  |  -  |  The pipeline parameters that the trigger will act upon. | 
| **annotations** | string |  -  |  -  |  List of tags that can be used for describing the Data Factory Schedule Trigger. | 

### `pipeline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | The pipeline parameters that the trigger will act upon. |

### `monthly` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `weekday` | string | Yes | - | The day of the week on which the trigger runs. For example, a 'monthly' property with a 'weekday' value of 'Sunday' means every Sunday of the month. |
| `week` | string | No | - | The occurrence of the specified day during the month. For example, a 'monthly' property with 'weekday' and 'week' values of 'Sunday, -1' means the last Sunday of the month. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days_of_month` | int | No | - | Day(s) of the month on which the trigger is scheduled. This value can be specified with a monthly frequency only. |
| `days_of_week` | int | No | - | Days of the week on which the trigger is scheduled. This value can be specified only with a weekly frequency. |
| `hours` | string | No | - | Hours of the day on which the trigger is scheduled. |
| `minutes` | int | No | - | Minutes of the hour on which the trigger is scheduled. |
| `monthly` | [block](#schedule-block-structure) | No | - | A 'monthly' block, which specifies the days of the month on which the trigger is scheduled. The value can be specified only with a monthly frequency. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Schedule Trigger. | 

Additionally, all variables are provided as outputs.
