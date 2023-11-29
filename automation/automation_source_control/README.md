# azurerm_automation_source_control

Manages an Automation Source Control.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created. | 
| **var.automation_account_id** | string | True | -  |  The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **var.folder_path** | string | True | -  |  The folder path of the source control. This Path must be relative. | 
| **var.repository_url** | string | True | -  |  The Repository URL of the source control. | 
| **var.security** | block | True | -  |  A `security` block. | 
| **var.source_control_type** | string | True | -  |  The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive. | 
| **var.automatic_sync** | string | False | -  |  Whether auto async the Source Control. | 
| **var.branch** | string | False | -  |  Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`. | 
| **var.description** | string | False | -  |  A short description of the Source Control. | 
| **var.publish_runbook_enabled** | bool | False | `True`  |  Whether auto publish the Source Control. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **automation_account_id** | string  | - | 
| **folder_path** | string  | - | 
| **repository_url** | string  | - | 
| **security** | block  | - | 
| **source_control_type** | string  | - | 
| **automatic_sync** | string  | - | 
| **branch** | string  | - | 
| **description** | string  | - | 
| **publish_runbook_enabled** | bool  | - | 
| **id** | string  | The ID of the Automation Source Control. | 