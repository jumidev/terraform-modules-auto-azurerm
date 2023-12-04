# azurerm_monitor_alert_processing_rule_action_group

Manages an Alert Processing Rule which apply action group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_alert_processing_rule_action_group" 
}

inputs = {
   add_action_group_ids = "add_action_group_ids of monitor_alert_processing_rule_action_group" 
   name = "name of monitor_alert_processing_rule_action_group" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of monitor_alert_processing_rule_action_group" 
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
| **add_action_group_ids** | string |  Specifies a list of Action Group IDs. | 
| **name** | string |  The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created. | 
| **scopes** | list |  A list of resource IDs which will be the target of alert processing rule. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **condition** | [block](#condition-block-structure) |  -  |  A `condition` block. | 
| **description** | string |  -  |  Specifies a description for the Alert Processing Rule. | 
| **enabled** | bool |  `True`  |  Should the Alert Processing Rule be enabled? Defaults to `true`. | 
| **schedule** | [block](#schedule-block-structure) |  -  |  A `schedule` block. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Alert Processing Rule. | 

### `target_resource_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. The values should be valid resource group IDs. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `effective_from` | string | No | - | Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S). |
| `effective_until` | string | No | - | Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S). |
| `recurrence` | [block](#schedule-block-structure) | No | - | A 'recurrence' block. |
| `time_zone` | string | No | UTC | The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to 'UTC'. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)). |

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alert_context` | [block](#condition-block-structure) | No | - | A 'alert_context' block. |
| `alert_rule_id` | [block](#condition-block-structure) | No | - | A 'alert_rule_id' block. |
| `alert_rule_name` | [block](#condition-block-structure) | No | - | A 'alert_rule_name' block. |
| `description` | [block](#condition-block-structure) | No | - | A 'description' block. |
| `monitor_condition` | [block](#condition-block-structure) | No | - | A 'monitor_condition' block. |
| `monitor_service` | [block](#condition-block-structure) | No | - | A 'monitor_service' block. |
| `severity` | [block](#condition-block-structure) | No | - | A 'severity' block. |
| `signal_type` | [block](#condition-block-structure) | No | - | A 'signal_type' block. |
| `target_resource` | [block](#condition-block-structure) | No | - | A 'target_resource' block. |
| `target_resource_group` | [block](#condition-block-structure) | No | - | A 'target_resource_group' block. |
| `target_resource_type` | [block](#condition-block-structure) | No | - | A 'target_resource_type' block. |

### `description` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | string | Yes | - | Specifies a list of values to match for a given condition. |

### `severity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | string | Yes | - | Specifies list of values to match for a given condition. Possible values are 'Sev0', 'Sev1', 'Sev2', 'Sev3', and 'Sev4'. |

### `monitor_condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | string | Yes | - | Specifies a list of values to match for a given condition. Possible values are 'Fired' and 'Resolved'. |

### `signal_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | string | Yes | - | Specifies a list of values to match for a given condition. Possible values are 'Metric', 'Log', 'Unknown', and 'Health'. |

### `target_resource` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. The values should be valid resource IDs. |

### `alert_context` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | string | Yes | - | Specifies a list of values to match for a given condition. |

### `weekly` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days_of_week` | string | Yes | - | Specifies a list of dayOfWeek to recurrence. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', and 'Saturday'. |
| `start_time` | string | No | - | Specifies the recurrence start time (H:M:S). |
| `end_time` | string | No | - | Specifies the recurrence end time (H:M:S). |

### `recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `daily` | list | No | - | One or more 'daily' blocks. |
| `weekly` | [block](#recurrence-block-structure) | No | - | One or more 'weekly' blocks. |
| `monthly` | list | No | - | One or more 'monthly' blocks. |

### `target_resource_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines) |

### `alert_rule_id` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | string | Yes | - | Specifies a list of values to match for a given condition. |

### `alert_rule_name` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | string | Yes | - | Specifies a list of values to match for a given condition. |

### `monitor_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | string | Yes | - | A list of values to match for a given condition. Possible values are 'ActivityLog Administrative', 'ActivityLog Autoscale', 'ActivityLog Policy', 'ActivityLog Recommendation', 'ActivityLog Security', 'Application Insights', 'Azure Backup', 'Azure Stack Edge', 'Azure Stack Hub', 'Custom', 'Data Box Gateway', 'Health Platform', 'Log Alerts V2', 'Log Analytics', 'Platform', 'Prometheus', 'Resource Health', 'Smart Detector', and 'VM Insights - Health'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Processing Rule. | 

Additionally, all variables are provided as outputs.
