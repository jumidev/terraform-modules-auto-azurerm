# azurerm_stream_analytics_job_schedule

Manages a Stream Analytics Job Schedule.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.stream_analytics_job_id** | string | True | -  |  The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created. | 
| **var.start_mode** | string | True | `JobStartTime`, `CustomTime`, `LastOutputEventTime`  |  The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`. | 
| **var.start_time** | string | False | -  |  The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime` | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **stream_analytics_job_id** | string  | - | 
| **start_mode** | string  | - | 
| **start_time** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Job. | 
| **last_output_time** | string  | The time at which the Stream Analytics job last produced an output. | 