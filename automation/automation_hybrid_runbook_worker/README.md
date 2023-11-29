# azurerm_automation_hybrid_runbook_worker

Manages a Automation Hybrid Runbook Worker.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created. | 
| **worker_group_name** | string | True | -  |  -  | The name of the HybridWorker Group. Changing this forces a new Automation to be created. | 
| **worker_id** | string | True | -  |  -  | Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created. | 
| **vm_resource_id** | string | True | -  |  -  | The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created. | 

