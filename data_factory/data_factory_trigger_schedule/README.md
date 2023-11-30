# azurerm_data_factory_trigger_schedule

Manages a Trigger Schedule inside a Azure Data Factory.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | -  |  -  |  The Schedule Trigger's description. | 
| **var.schedule** | block | False | -  |  -  |  A `schedule` block, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the `frequency` and `interval` properties. | 
| **var.start_time** | string | False | -  |  -  |  The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC. | 
| **var.time_zone** | string | False | -  |  -  |  The timezone of the start/end time. | 
| **var.end_time** | string | False | -  |  -  |  The time the Schedule Trigger should end. The time will be represented in UTC. | 
| **var.interval** | string | False | `1`  |  -  |  The interval for how often the trigger occurs. This defaults to `1`. | 
| **var.frequency** | string | False | `Minute`  |  `Minute`, `Hour`, `Day`, `Week`, `Month`  |  The trigger frequency. Valid values include `Minute`, `Hour`, `Day`, `Week`, `Month`. Defaults to `Minute`. | 
| **var.activated** | bool | False | `True`  |  -  |  Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`. | 
| **var.pipeline** | block | False | -  |  -  |  A `pipeline` block. | 
| **var.pipeline_name** | string | False | -  |  -  |  The Data Factory Pipeline name that the trigger will act on. | 
| **var.pipeline_parameters** | string | False | -  |  -  |  The pipeline parameters that the trigger will act upon. | 
| **var.annotations** | string | False | -  |  -  |  List of tags that can be used for describing the Data Factory Schedule Trigger. | 

### `schedule` block structure

>`days_of_month` (int): Day(s) of the month on which the trigger is scheduled. This value can be specified with a monthly frequency only.
>`days_of_week` (int): Days of the week on which the trigger is scheduled. This value can be specified only with a weekly frequency.
>`hours` (string): Hours of the day on which the trigger is scheduled.
>`minutes` (int): Minutes of the hour on which the trigger is scheduled.
>`monthly` (block): A 'monthly' block, which specifies the days of the month on which the trigger is scheduled. The value can be specified only with a monthly frequency.

### `pipeline` block structure

>`name` (string): (REQUIRED) Reference pipeline name.
>`parameters` (string): The pipeline parameters that the trigger will act upon.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Schedule Trigger. | 

Additionally, all variables are provided as outputs.
