# azurerm_automation_watcher

Manages an Automation Wacher.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.automation_account_id** | string | True | The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created. | 
| **var.name** | string | True | The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created. | 
| **var.execution_frequency_in_seconds** | int | True | Specify the frequency at which the watcher is invoked. | 
| **var.location** | string | True | The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created. | 
| **var.script_name** | string | True | Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created. | 
| **var.script_run_on** | string | True | Specify the name of the Hybrid work group the watcher will run on. | 
| **var.description** | string | False | A description of this Automation Watcher. | 
| **var.etag** | string | False | A string of etag assigned to this Automation Watcher. | 
| **var.script_parameters** | string | False | Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Automation Watcher. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **automation_account_id** | string  | - | 
| **name** | string  | - | 
| **execution_frequency_in_seconds** | int  | - | 
| **location** | string  | - | 
| **script_name** | string  | - | 
| **script_run_on** | string  | - | 
| **description** | string  | - | 
| **etag** | string  | - | 
| **script_parameters** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Automation Watcher. | 
| **status** | string  | The current status of the Automation Watcher. | 

## Example minimal hclt

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