# azurerm_monitor_action_group

Manages an Action Group within Azure Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Action Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created. | 
| **short_name** | string | True | -  |  -  | The short name of the action group. This will be used in SMS messages. | 
| **enabled** | bool | False | `True`  |  -  | Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to `true`. | 
| **arm_role_receiver** | block | False | -  |  -  | One or more `arm_role_receiver` blocks. | 
| **automation_runbook_receiver** | block | False | -  |  -  | One or more `automation_runbook_receiver` blocks. | 
| **azure_app_push_receiver** | block | False | -  |  -  | One or more `azure_app_push_receiver` blocks. | 
| **azure_function_receiver** | block | False | -  |  -  | One or more `azure_function_receiver` blocks. | 
| **email_receiver** | block | False | -  |  -  | One or more `email_receiver` blocks. | 
| **event_hub_receiver** | block | False | -  |  -  | One or more `event_hub_receiver` blocks. | 
| **itsm_receiver** | block | False | -  |  -  | One or more `itsm_receiver` blocks. | 
| **location** | string | False | `global`  |  -  | The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to `global`. | 
| **logic_app_receiver** | block | False | -  |  -  | One or more `logic_app_receiver` blocks. | 
| **sms_receiver** | block | False | -  |  -  | One or more `sms_receiver` blocks. | 
| **voice_receiver** | block | False | -  |  -  | One or more `voice_receiver` blocks. | 
| **webhook_receiver** | block | False | -  |  -  | One or more `webhook_receiver` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

