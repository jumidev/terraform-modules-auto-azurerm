# azurerm_automation_runbook

Manages a Automation Runbook.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Runbook. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created. | 
| **var.runbook_type** | string | True | -  |  The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created. | 
| **var.log_progress** | string | True | -  |  Progress log option. | 
| **var.log_verbose** | string | True | -  |  Verbose log option. | 
| **var.publish_content_link** | block | False | -  |  One `publish_content_link` block. | 
| `publish_content_link` block structure: || 
|   uri (string): (REQUIRED) The URI of the runbook content. ||
|   version (string): Specifies the version of the content ||
|   hash (block): A 'hash' block. ||
| **var.description** | string | False | -  |  A description for this credential. | 
| **var.content** | string | False | -  |  The desired content of the runbook. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 
| **var.log_activity_trace_level** | string | False | `0`, `9`, `15`  |  Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing. | 
| **var.draft** | block | False | -  |  A `draft` block . | 
| `draft` block structure: || 
|   edit_mode_enabled (bool): Whether the draft in edit mode. ||
|   content_link (block): A 'publish_content_link' block. ||
|   output_types (string): Specifies the output types of the runbook. ||
|   parameters (block): A list of 'parameters' block. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Runbook ID. | 

Additionally, all variables are provided as outputs.
