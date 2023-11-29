# azurerm_automation_watcher

Manages an Automation Wacher.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **automation_account_id** | string | True | -  |  -  | The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created. | 
| **execution_frequency_in_seconds** | int | True | -  |  -  | Specify the frequency at which the watcher is invoked. | 
| **location** | string | True | -  |  -  | The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created. | 
| **script_name** | string | True | -  |  -  | Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created. | 
| **script_run_on** | string | True | -  |  -  | Specify the name of the Hybrid work group the watcher will run on. | 
| **description** | string | False | -  |  -  | A description of this Automation Watcher. | 
| **etag** | string | False | -  |  -  | A string of etag assigned to this Automation Watcher. | 
| **script_parameters** | string | False | -  |  -  | Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Automation Watcher. | 

