# azurerm_automation_webhook

Manages an Automation Runbook's Webhook.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_webhook" 
}

inputs = {
   name = "name of automation_webhook" 
   resource_group_name = "${resource_group}" 
   # automation_account_name → set in tfstate_inputs
   expiry_time = "expiry_time of automation_webhook" 
   runbook_name = "runbook_name of automation_webhook" 
}

tfstate_inputs = {
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
| **name** | string |  Specifies the name of the Webhook. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created. | 
| **expiry_time** | string |  Timestamp when the webhook expires. Changing this forces a new resource to be created. | 
| **runbook_name** | string |  Name of the Automation Runbook to execute by Webhook. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Controls if Webhook is enabled. Defaults to `true`. | 
| **run_on_worker_group** | string |  -  |  Name of the hybrid worker group the Webhook job will run on. | 
| **parameters** | string |  -  |  Map of input parameters passed to runbook. | 
| **uri** | string |  -  |  URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Webhook ID. | 
| **uri** | string | No  | (Sensitive) Generated URI for this Webhook. Changing this forces a new resource to be created. | 

Additionally, all variables are provided as outputs.
