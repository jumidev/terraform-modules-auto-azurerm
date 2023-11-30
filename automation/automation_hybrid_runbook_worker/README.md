# azurerm_automation_hybrid_runbook_worker

Manages a Automation Hybrid Runbook Worker.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_hybrid_runbook_worker" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_hybrid_runbook_worker" 
   worker_group_name = "worker_group_name of automation_hybrid_runbook_worker" 
   worker_id = "worker_id of automation_hybrid_runbook_worker" 
   vm_resource_id = "vm_resource_id of automation_hybrid_runbook_worker" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created. | 
| **var.worker_group_name** | string | True | The name of the HybridWorker Group. Changing this forces a new Automation to be created. | 
| **var.worker_id** | string | True | Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created. | 
| **var.vm_resource_id** | string | True | The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Hybrid Runbook Worker. | 
| **ip** | string | No  | The IP address of assigned machine. | 
| **last_seen_date_time** | string | No  | Last Heartbeat from the Worker. | 
| **registration_date_time** | string | No  | The registration time of the worker machine. | 
| **worker_name** | string | No  | The name of HybridWorker. | 
| **worker_type** | string | No  | The type of the HybridWorker, the possible values are `HybridV1` and `HybridV2`. | 

Additionally, all variables are provided as outputs.
