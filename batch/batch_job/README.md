# azurerm_batch_job

Manages a Batch Job.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "batch/batch_job"   
}

inputs = {
   # batch_pool_id → set in component_inputs
   name = "The name which should be used for this Batch Job"   
}

component_inputs = {
   batch_pool_id = "path/to/batch_pool_component:id"   
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
| **batch_pool_id** | string |  The ID of the Batch Pool. Changing this forces a new Batch Job to be created. | 
| **name** | string |  The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **common_environment_properties** | string |  -  |  Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created. | 
| **display_name** | string |  -  |  The display name of this Batch Job. Changing this forces a new Batch Job to be created. | 
| **task_retry_maximum** | number |  -  |  The number of retries to each Batch Task belongs to this Batch Job. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit. | 
| **priority** | string |  `0`  |  The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to `0`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Job. | 

Additionally, all variables are provided as outputs.
