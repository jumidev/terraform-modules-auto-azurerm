# azurerm_automation_source_control

Manages an Automation Source Control.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created. | 
| **automation_account_id** | string | True | -  |  -  | The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **folder_path** | string | True | -  |  -  | The folder path of the source control. This Path must be relative. | 
| **repository_url** | string | True | -  |  -  | The Repository URL of the source control. | 
| **security** | block | True | -  |  -  | A `security` block. | 
| **source_control_type** | string | True | -  |  -  | The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive. | 
| **automatic_sync** | string | False | -  |  -  | Whether auto async the Source Control. | 
| **branch** | string | False | -  |  -  | Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`. | 
| **description** | string | False | -  |  -  | A short description of the Source Control. | 
| **publish_runbook_enabled** | bool | False | `True`  |  -  | Whether auto publish the Source Control. Defaults to `true`. | 

