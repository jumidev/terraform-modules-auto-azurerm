# azurerm_stream_analytics_job_schedule

Manages a Stream Analytics Job Schedule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_job_schedule" 
}

inputs = {
   stream_analytics_job_id = "stream_analytics_job_id of stream_analytics_job_schedule" 
   start_mode = "start_mode of stream_analytics_job_schedule" 
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
| **var.stream_analytics_job_id** | string |  -  |  The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created. | 
| **var.start_mode** | string |  `JobStartTime`, `CustomTime`, `LastOutputEventTime`  |  The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.start_time** | string |  The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime` | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Job. | 
| **last_output_time** | string | No  | The time at which the Stream Analytics job last produced an output. | 

Additionally, all variables are provided as outputs.
