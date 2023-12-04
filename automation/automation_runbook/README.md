# azurerm_automation_runbook

Manages a Automation Runbook.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_runbook" 
}

inputs = {
   name = "name of automation_runbook" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   automation_account_name = "automation_account_name of automation_runbook" 
   runbook_type = "runbook_type of automation_runbook" 
   log_progress = "log_progress of automation_runbook" 
   log_verbose = "log_verbose of automation_runbook" 
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
| **name** | string |  Specifies the name of the Runbook. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created. | 
| **runbook_type** | string |  The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created. | 
| **log_progress** | string |  Progress log option. | 
| **log_verbose** | string |  Verbose log option. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **publish_content_link** | [block](#publish_content_link-block-structure) |  -  |  One `publish_content_link` block. | 
| **description** | string |  -  |  A description for this credential. | 
| **content** | string |  -  |  The desired content of the runbook. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 
| **log_activity_trace_level** | string |  `0`, `9`, `15`  |  Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing. | 
| **draft** | [block](#draft-block-structure) |  -  |  A `draft` block . | 

### `draft` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `edit_mode_enabled` | bool | No | - | Whether the draft in edit mode. |
| `content_link` | [block](#draft-block-structure) | No | - | A 'publish_content_link' block. |
| `output_types` | string | No | - | Specifies the output types of the runbook. |
| `parameters` | [block](#draft-block-structure) | No | - | A list of 'parameters' block. |

### `publish_content_link` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `uri` | string | Yes | - | The URI of the runbook content. |
| `version` | string | No | - | Specifies the version of the content |
| `hash` | [block](#publish_content_link-block-structure) | No | - | A 'hash' block. |

### `hash` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `algorithm` | string | Yes | - | Specifies the hash algorithm used to hash the content. |
| `value` | string | Yes | - | Specifies the expected hash value of the content. |

### `parameters` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key` | string | Yes | - | The name of the parameter. |
| `type` | string | Yes | - | Specifies the type of this parameter. |
| `mandatory` | string | No | - | Whether this parameter is mandatory. |
| `position` | string | No | - | Specifies the position of the parameter. |
| `default_value` | string | No | - | Specifies the default value of the parameter. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Runbook ID. | 

Additionally, all variables are provided as outputs.
