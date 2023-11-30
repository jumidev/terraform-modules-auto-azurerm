# azurerm_batch_job

Manages a Batch Job.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "batch/batch_job" 
}

inputs = {
   batch_pool_id = "batch_pool_id of batch_job" 
   name = "name of batch_job" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.batch_pool_id** | string | True | -  |  The ID of the Batch Pool. Changing this forces a new Batch Job to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created. | 
| **var.common_environment_properties** | string | False | -  |  Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created. | 
| **var.display_name** | string | False | -  |  The display name of this Batch Job. Changing this forces a new Batch Job to be created. | 
| **var.task_retry_maximum** | int | False | -  |  The number of retries to each Batch Task belongs to this Batch Job. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit. | 
| **var.priority** | string | False | `0`  |  The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to `0`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Job. | 

Additionally, all variables are provided as outputs.
