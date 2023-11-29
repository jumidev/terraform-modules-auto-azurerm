# azurerm_automation_webhook

Manages an Automation Runbook's Webhook.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Webhook. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created. | 
| **var.expiry_time** | string | True | -  |  Timestamp when the webhook expires. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Controls if Webhook is enabled. Defaults to `true`. | 
| **var.runbook_name** | string | True | -  |  Name of the Automation Runbook to execute by Webhook. | 
| **var.run_on_worker_group** | string | False | -  |  Name of the hybrid worker group the Webhook job will run on. | 
| **var.parameters** | string | False | -  |  Map of input parameters passed to runbook. | 
| **var.uri** | string | False | -  |  URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **expiry_time** | string  | - | 
| **enabled** | bool  | - | 
| **runbook_name** | string  | - | 
| **run_on_worker_group** | string  | - | 
| **parameters** | string  | - | 
| **uri** | string  | - | 
| **id** | string  | The Automation Webhook ID. | 
| **uri** | string  | (Sensitive) Generated URI for this Webhook. Changing this forces a new resource to be created. | 