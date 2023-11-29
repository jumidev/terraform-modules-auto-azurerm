# azurerm_automation_job_schedule

Links an Automation Runbook and Schedule.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created. | 
| **var.runbook_name** | string | True | The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created. | 
| **var.schedule_name** | string | True | The name of the Schedule. Changing this forces a new resource to be created. | 
| **var.parameters** | string | False | A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created. | 
| **var.run_on** | string | False | Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **runbook_name** | string  | - | 
| **schedule_name** | string  | - | 
| **parameters** | string  | - | 
| **run_on** | string  | - | 
| **id** | string  | The ID of the Automation Job Schedule. | 
| **job_schedule_id** | string  | The UUID identifying the Automation Job Schedule. | 