# azurerm_automation_hybrid_runbook_worker_group

Manages a Automation Hybrid Runbook Worker Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_hybrid_runbook_worker_group" 
}

inputs = {
   automation_account_name = "automation_account_name of automation_hybrid_runbook_worker_group" 
   name = "name of automation_hybrid_runbook_worker_group" 
   resource_group_name = "${resource_group}" 
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
| **var.automation_account_name** | string | True | The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created. | 
| **var.name** | string | True | The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **var.credential_name** | string | False | The name of resource type `azurerm_automation_credential` to use for hybrid worker. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Hybrid Runbook Worker Group. | 

Additionally, all variables are provided as outputs.
