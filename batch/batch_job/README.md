# azurerm_batch_job

Manages a Batch Job.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **batch_pool_id** | string | True | -  |  -  | The ID of the Batch Pool. Changing this forces a new Batch Job to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created. | 
| **common_environment_properties** | string | False | -  |  -  | Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created. | 
| **display_name** | string | False | -  |  -  | The display name of this Batch Job. Changing this forces a new Batch Job to be created. | 
| **task_retry_maximum** | int | False | -  |  -  | The number of retries to each Batch Task belongs to this Batch Job. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit. | 
| **priority** | string | False | `0`  |  -  | The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to `0`. | 

