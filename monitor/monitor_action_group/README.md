# azurerm_monitor_action_group

Manages an Action Group within Azure Monitor.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Action Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created. | 
| **var.short_name** | string | True | -  |  The short name of the action group. This will be used in SMS messages. | 
| **var.enabled** | bool | False | `True`  |  Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to `true`. | 
| **var.arm_role_receiver** | block | False | -  |  One or more `arm_role_receiver` blocks. | 
| **var.automation_runbook_receiver** | block | False | -  |  One or more `automation_runbook_receiver` blocks. | 
| **var.azure_app_push_receiver** | block | False | -  |  One or more `azure_app_push_receiver` blocks. | 
| **var.azure_function_receiver** | block | False | -  |  One or more `azure_function_receiver` blocks. | 
| **var.email_receiver** | block | False | -  |  One or more `email_receiver` blocks. | 
| **var.event_hub_receiver** | block | False | -  |  One or more `event_hub_receiver` blocks. | 
| **var.itsm_receiver** | block | False | -  |  One or more `itsm_receiver` blocks. | 
| **var.location** | string | False | `global`  |  The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to `global`. | 
| **var.logic_app_receiver** | block | False | -  |  One or more `logic_app_receiver` blocks. | 
| **var.sms_receiver** | block | False | -  |  One or more `sms_receiver` blocks. | 
| **var.voice_receiver** | block | False | -  |  One or more `voice_receiver` blocks. | 
| **var.webhook_receiver** | block | False | -  |  One or more `webhook_receiver` blocks. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **short_name** | string  | - | 
| **enabled** | bool  | - | 
| **arm_role_receiver** | block  | - | 
| **automation_runbook_receiver** | block  | - | 
| **azure_app_push_receiver** | block  | - | 
| **azure_function_receiver** | block  | - | 
| **email_receiver** | block  | - | 
| **event_hub_receiver** | block  | - | 
| **itsm_receiver** | block  | - | 
| **location** | string  | - | 
| **logic_app_receiver** | block  | - | 
| **sms_receiver** | block  | - | 
| **voice_receiver** | block  | - | 
| **webhook_receiver** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Action Group. | 