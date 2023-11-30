# azurerm_monitor_action_rule_action_group

Manages a Monitor Action Rule which type is action group.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_monitor_alert_processing_rule_action_group`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_processing_rule_action_group) resource instead.

## Example minimal component.hclt

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
| **var.name** | string  Specifies the name of the Monitor Action Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created. | 
| **var.action_group_id** | string  Specifies the resource id of monitor action group. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.description** | string  -  |  Specifies a description for the Action Rule. | 
| **var.enabled** | bool  `True`  |  Is the Action Rule enabled? Defaults to `true`. | 
| **var.scope** | block  -  |  A `scope` block. | 
| **var.condition** | block  -  |  A `condition` block. | 
| **var.tags** | map  -  |  A mapping of tags to assign to the resource. | 

### `scope` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of target scope. Possible values are 'ResourceGroup' and 'Resource'. |
| `resource_ids` | list | Yes | - | A list of resource IDs of the given scope type which will be the target of action rule. |

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alert_context` | block | No | - | A 'alert_context' block. |
| `alert_rule_id` | block | No | - | A 'alert_rule_id' block. |
| `description` | block | No | - | A 'description' block. |
| `monitor` | block | No | - | A 'monitor' block. |
| `monitor_service` | block | No | - | A 'monitor_service' block. |
| `severity` | block | No | - | A 'severity' block. |
| `target_resource_type` | block | No | - | A 'target_resource_type' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Action Rule. | 

Additionally, all variables are provided as outputs.
