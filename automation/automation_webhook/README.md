# azurerm_automation_webhook

Manages an Automation Runbook's Webhook.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Webhook. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created. | 
| **expiry_time** | string | True | -  |  -  | Timestamp when the webhook expires. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Controls if Webhook is enabled. Defaults to `true`. | 
| **runbook_name** | string | True | -  |  -  | Name of the Automation Runbook to execute by Webhook. | 
| **run_on_worker_group** | string | False | -  |  -  | Name of the hybrid worker group the Webhook job will run on. | 
| **parameters** | string | False | -  |  -  | Map of input parameters passed to runbook. | 
| **uri** | string | False | -  |  -  | URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created. | 

