# azurerm_monitor_action_group

Manages an Action Group within Azure Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_action_group" 
}

inputs = {
   name = "name of monitor_action_group" 
   resource_group_name = "${resource_group}" 
   short_name = "short_name of monitor_action_group" 
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
| **var.name** | string  The name of the Action Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created. | 
| **var.short_name** | string  The short name of the action group. This will be used in SMS messages. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.enabled** | bool  `True`  |  Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to `true`. | 
| **var.arm_role_receiver** | block  -  |  One or more `arm_role_receiver` blocks. | 
| **var.automation_runbook_receiver** | block  -  |  One or more `automation_runbook_receiver` blocks. | 
| **var.azure_app_push_receiver** | block  -  |  One or more `azure_app_push_receiver` blocks. | 
| **var.azure_function_receiver** | block  -  |  One or more `azure_function_receiver` blocks. | 
| **var.email_receiver** | block  -  |  One or more `email_receiver` blocks. | 
| **var.event_hub_receiver** | block  -  |  One or more `event_hub_receiver` blocks. | 
| **var.itsm_receiver** | block  -  |  One or more `itsm_receiver` blocks. | 
| **var.location** | string  `global`  |  The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to `global`. | 
| **var.logic_app_receiver** | block  -  |  One or more `logic_app_receiver` blocks. | 
| **var.sms_receiver** | block  -  |  One or more `sms_receiver` blocks. | 
| **var.voice_receiver** | block  -  |  One or more `voice_receiver` blocks. | 
| **var.webhook_receiver** | block  -  |  One or more `webhook_receiver` blocks. | 
| **var.tags** | map  -  |  A mapping of tags to assign to the resource. | 

### `arm_role_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `role_id` | string | Yes | - | The arm role id. |
| `use_common_alert_schema` | bool | No | - | Enables or disables the common alert schema. |

### `automation_runbook_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `automation_account_id` | string | Yes | - | The automation account ID which holds this runbook and authenticates to Azure resources. |
| `runbook_name` | string | Yes | - | The name for this runbook. |
| `webhook_resource_id` | string | Yes | - | The resource id for webhook linked to this runbook. |
| `is_global_runbook` | string | Yes | - | Indicates whether this instance is global runbook. |
| `service_uri` | string | Yes | - | The URI where webhooks should be sent. |
| `use_common_alert_schema` | bool | No | - | Enables or disables the common alert schema. |

### `azure_app_push_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email_address` | string | Yes | - | The email address of the user signed into the mobile app who will receive push notifications from this receiver. |

### `azure_function_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `function_app_resource_id` | string | Yes | - | The Azure resource ID of the function app. |
| `function_name` | string | Yes | - | The function name in the function app. |
| `http_trigger_url` | string | Yes | - | The HTTP trigger url where HTTP request sent to. |
| `use_common_alert_schema` | bool | No | - | Enables or disables the common alert schema. |

### `email_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email_address` | string | Yes | - | The email address of this receiver. |
| `use_common_alert_schema` | bool | No | - | Enables or disables the common alert schema. |

### `event_hub_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | No | - | The resource ID of the respective Event Hub. |
| `event_hub_name` | string | No | - | The name of the specific Event Hub queue. |
| `event_hub_namespace` | string | No | - | The namespace name of the Event Hub. |
| `subscription_id` | string | No | - | The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group. |
| `tenant_id` | string | No | - | The Tenant ID for the subscription containing this Event Hub. |
| `use_common_alert_schema` | bool | No | - | Indicates whether to use common alert schema. |

### `itsm_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `workspace_id` | string | Yes | - | The Azure Log Analytics workspace ID where this connection is defined. Format is '<subscription id>|<workspace id>', for example '00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000'. |
| `connection_id` | string | Yes | - | The unique connection identifier of the ITSM connection. |
| `ticket_configuration` | string | Yes | - | A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well. |
| `region` | string | Yes | - | The region of the workspace. |

### `logic_app_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `resource_id` | string | Yes | - | The Azure resource ID of the logic app. |
| `callback_url` | string | Yes | - | The callback url where HTTP request sent to. |
| `use_common_alert_schema` | bool | No | - | Enables or disables the common alert schema. |

### `sms_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `country_code` | string | Yes | - | The country code of the SMS receiver. |
| `phone_number` | int | Yes | - | The phone number of the SMS receiver. |

### `voice_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `country_code` | string | Yes | - | The country code of the voice receiver. |
| `phone_number` | int | Yes | - | The phone number of the voice receiver. |

### `webhook_receiver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `service_uri` | string | Yes | - | The URI where webhooks should be sent. |
| `use_common_alert_schema` | bool | No | - | Enables or disables the common alert schema. |
| `aad_auth` | block | No | - | The 'aad_auth' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Action Group. | 

Additionally, all variables are provided as outputs.
