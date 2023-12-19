# azurerm_monitor_action_rule_suppression

Manages a Monitor Action Rule which type is suppression.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_monitor_alert_processing_rule_suppression`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_processing_rule_suppression) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_action_rule_suppression"   
}

inputs = {
   name = "Specifies the name of the Monitor Action Rule"   
   resource_group_name = "${resource_group}"   
   suppression = {
      recurrence_type = "..."      
   }
   
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
| **name** | string |  Specifies the name of the Monitor Action Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created. | 
| **suppression** | [block](#suppression-block-structure) |  A `suppression` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  Specifies a description for the Action Rule. | 
| **enabled** | bool |  `True`  |  Is the Action Rule enabled? Defaults to `true`. | 
| **scope** | [block](#scope-block-structure) |  -  |  A `scope` block. | 
| **condition** | [block](#condition-block-structure) |  -  |  A `condition` block. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `alert_rule_id` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. |

### `monitor_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | string | Yes | - | A list of values to match for a given condition. Possible values are 'ActivityLog Administrative', 'ActivityLog Autoscale', 'ActivityLog Policy', 'ActivityLog Recommendation', 'ActivityLog Security', 'Application Insights', 'Azure Backup', 'Azure Stack Edge', 'Azure Stack Hub', 'Custom', 'Data Box Gateway', 'Health Platform', 'Log Alerts V2', 'Log Analytics', 'Platform', 'Resource Health', 'Smart Detector' and 'VM Insights - Health'. |

### `alert_context` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. |

### `monitor` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | string | Yes | - | A list of values to match for a given condition. Possible values are 'Fired' and 'Resolved'. |

### `target_resource_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals' and 'NotEquals'. |
| `values` | list | Yes | - | A list of values to match for a given condition. The values should be valid resource types. |

### `scope` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of target scope. Possible values are 'ResourceGroup' and 'Resource'. |
| `resource_ids` | list | Yes | - | A list of resource IDs of the given scope type which will be the target of action rule. |

### `suppression` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `recurrence_type` | string | Yes | - | Specifies the type of suppression. Possible values are 'Always', 'Daily', 'Monthly', 'Once', and 'Weekly'. |
| `schedule` | [block](#schedule-block-structure) | No | - | A 'schedule' block. Required if 'recurrence_type' is 'Daily', 'Monthly', 'Once' or 'Weekly'. |

### `severity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals'and 'NotEquals'. |
| `values` | string | Yes | - | A list of values to match for a given condition. Possible values are 'Sev0', 'Sev1', 'Sev2', 'Sev3', and 'Sev4'. |

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alert_context` | [block](#alert_context-block-structure) | No | - | A 'alert_context' block. |
| `alert_rule_id` | [block](#alert_rule_id-block-structure) | No | - | A 'alert_rule_id' block. |
| `description` | [block](#description-block-structure) | No | - | A 'description' block. |
| `monitor` | [block](#monitor-block-structure) | No | - | A 'monitor' block. |
| `monitor_service` | [block](#monitor_service-block-structure) | No | - | A 'monitor_service' block. |
| `severity` | [block](#severity-block-structure) | No | - | A 'severity' block. |
| `target_resource_type` | [block](#target_resource_type-block-structure) | No | - | A 'target_resource_type' block. |

### `description` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `start_date_utc` | string | Yes | - | specifies the recurrence UTC start datetime (Y-m-d'T'H:M:S'Z'). |
| `end_date_utc` | string | Yes | - | specifies the recurrence UTC end datetime (Y-m-d'T'H:M:S'Z'). |
| `recurrence_weekly` | string | No | - | specifies the list of dayOfWeek to recurrence. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |
| `recurrence_monthly` | string | No | - | specifies the list of dayOfMonth to recurrence. Possible values are between '1' - '31'. Required if 'recurrence_type' is 'Monthly'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Action Rule. | 

Additionally, all variables are provided as outputs.
