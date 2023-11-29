# azurerm_automation_runbook

Manages a Automation Runbook.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Runbook. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created. | 
| **runbook_type** | string | True | -  |  -  | The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created. | 
| **log_progress** | string | True | -  |  -  | Progress log option. | 
| **log_verbose** | string | True | -  |  -  | Verbose log option. | 
| **publish_content_link** | block | False | -  |  -  | One `publish_content_link` block. | 
| **description** | string | False | -  |  -  | A description for this credential. | 
| **content** | string | False | -  |  -  | The desired content of the runbook. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **log_activity_trace_level** | string | False | -  |  `0`, `9`, `15`  | Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing. | 
| **draft** | block | False | -  |  -  | A `draft` block . | 

