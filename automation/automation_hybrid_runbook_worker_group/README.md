# azurerm_automation_hybrid_runbook_worker_group

Manages a Automation Hybrid Runbook Worker Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **automation_account_name** | string | True | -  |  -  | The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **credential_name** | string | False | -  |  -  | The name of resource type `azurerm_automation_credential` to use for hybrid worker. | 

