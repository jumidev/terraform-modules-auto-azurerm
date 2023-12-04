# azurerm_container_registry_task_schedule_run_now

Runs a Container Registry Task Schedule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_registry_task_schedule_run_now" 
}

inputs = {
   # container_registry_task_id → set in tfstate_inputs
}

tfstate_inputs = {
   container_registry_task_id = "path/to/container_registry_task_component:id" 
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
| **container_registry_task_id** | string |  The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry Task Schedule. | 

Additionally, all variables are provided as outputs.
