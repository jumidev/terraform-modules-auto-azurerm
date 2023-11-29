# azurerm_automation_job_schedule

Links an Automation Runbook and Schedule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Job Schedule is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created. | 
| **runbook_name** | string | True | -  |  -  | The name of a Runbook to link to a Schedule. It needs to be in the same Automation Account as the Schedule and Job Schedule. Changing this forces a new resource to be created. | 
| **schedule_name** | string | True | -  |  -  | The name of the Schedule. Changing this forces a new resource to be created. | 
| **parameters** | string | False | -  |  -  | A map of key/value pairs corresponding to the arguments that can be passed to the Runbook. Changing this forces a new resource to be created. | 
| **run_on** | string | False | -  |  -  | Name of a Hybrid Worker Group the Runbook will be executed on. Changing this forces a new resource to be created. | 

