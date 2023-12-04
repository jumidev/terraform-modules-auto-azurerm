# azurerm_monitor_action_rule_action_group

Manages a Monitor Action Rule which type is action group.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_monitor_alert_processing_rule_action_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_processing_rule_action_group) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_action_rule_action_group" 
}

inputs = {
   name = "name of monitor_action_rule_action_group" 
   resource_group_name = "${resource_group}" 
   action_group_id = "action_group_id of monitor_action_rule_action_group" 
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
| **action_group_id** | string |  Specifies the resource id of monitor action group. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  Specifies a description for the Action Rule. | 
| **enabled** | bool |  `True`  |  Is the Action Rule enabled? Defaults to `true`. | 
| **scope** | [block](#scope-block-structure) |  -  |  A `scope` block. | 
| **condition** | [block](#condition-block-structure) |  -  |  A `condition` block. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `severity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals'and 'NotEquals'. |
| `values` | string | Yes | - | A list of values to match for a given condition. Possible values are 'Sev0', 'Sev1', 'Sev2', 'Sev3', and 'Sev4'. |

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

### `alert_rule_id` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. |

### `description` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'. |
| `values` | list | Yes | - | A list of values to match for a given condition. |

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

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alert_context` | [block](#condition-block-structure) | No | - | A 'alert_context' block. |
| `alert_rule_id` | [block](#condition-block-structure) | No | - | A 'alert_rule_id' block. |
| `description` | [block](#condition-block-structure) | No | - | A 'description' block. |
| `monitor` | [block](#condition-block-structure) | No | - | A 'monitor' block. |
| `monitor_service` | [block](#condition-block-structure) | No | - | A 'monitor_service' block. |
| `severity` | [block](#condition-block-structure) | No | - | A 'severity' block. |
| `target_resource_type` | [block](#condition-block-structure) | No | - | A 'target_resource_type' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Action Rule. | 

Additionally, all variables are provided as outputs.
