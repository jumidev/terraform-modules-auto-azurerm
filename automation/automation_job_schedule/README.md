# azurerm_automation_job_schedule

Links an Automation Runbook and Schedule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_job_schedule" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_job_schedule" 
   runbook_name = "runbook_name of automation_job_schedule" 
   schedule_name = "schedule_name of automation_job_schedule" 
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
| **var.resource_group_name** | string |  The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string |  The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created. | 
| **var.runbook_name** | string |  The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created. | 
| **var.schedule_name** | string |  The name of the Schedule. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.parameters** | string |  A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created. | 
| **var.run_on** | string |  Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Job Schedule. | 
| **job_schedule_id** | string | No  | The UUID identifying the Automation Job Schedule. | 

Additionally, all variables are provided as outputs.
