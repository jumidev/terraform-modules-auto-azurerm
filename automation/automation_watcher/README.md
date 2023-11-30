# azurerm_automation_watcher

Manages an Automation Wacher.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_watcher" 
}

inputs = {
   automation_account_id = "automation_account_id of automation_watcher" 
   name = "name of automation_watcher" 
   execution_frequency_in_seconds = "execution_frequency_in_seconds of automation_watcher" 
   location = "${location}" 
   script_name = "script_name of automation_watcher" 
   script_run_on = "script_run_on of automation_watcher" 
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
| **var.automation_account_id** | string |  The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created. | 
| **var.name** | string |  The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created. | 
| **var.execution_frequency_in_seconds** | int |  Specify the frequency at which the watcher is invoked. | 
| **var.location** | string |  The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created. | 
| **var.script_name** | string |  Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created. | 
| **var.script_run_on** | string |  Specify the name of the Hybrid work group the watcher will run on. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  A description of this Automation Watcher. | 
| **var.etag** | string |  A string of etag assigned to this Automation Watcher. | 
| **var.script_parameters** | string |  Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the Automation Watcher. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Watcher. | 
| **status** | string | No  | The current status of the Automation Watcher. | 

Additionally, all variables are provided as outputs.
