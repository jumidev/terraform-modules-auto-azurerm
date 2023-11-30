# azurerm_automation_source_control

Manages an Automation Source Control.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_source_control" 
}

inputs = {
   name = "name of automation_source_control" 
   automation_account_id = "automation_account_id of automation_source_control" 
   folder_path = "folder_path of automation_source_control" 
   repository_url = "repository_url of automation_source_control" 
   security = "security of automation_source_control" 
   source_control_type = "source_control_type of automation_source_control" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Source Control. | 

Additionally, all variables are provided as outputs.
