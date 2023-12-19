# azurerm_automation_hybrid_runbook_worker_group

Manages a Automation Hybrid Runbook Worker Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_hybrid_runbook_worker_group"   
}

inputs = {
   # automation_account_name → set in component_inputs
   name = "The name which should be used for this Automation Account Runbook Worker Group..."   
   resource_group_name = "${resource_group}"   
}

component_inputs = {
   automation_account_name = "path/to/automation_account_component:name"   
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
| **automation_account_name** | string |  The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created. | 
| **name** | string |  The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **credential_name** | string |  The name of resource type `azurerm_automation_credential` to use for hybrid worker. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Hybrid Runbook Worker Group. | 

Additionally, all variables are provided as outputs.
