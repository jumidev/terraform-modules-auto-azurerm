# azurerm_automation_source_control

Manages an Automation Source Control.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_source_control"   
}

inputs = {
   name = "The name which should be used for this Automation Source Control..."   
   # automation_account_id → set in tfstate_inputs
   folder_path = "The folder path of the source control"   
   repository_url = "The Repository URL of the source control"   
   security = {
      token = "..."      
      token_type = "..."      
   }
   
   source_control_type = "The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `..."   
}

tfstate_inputs = {
   automation_account_id = "path/to/automation_account_component:id"   
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
| **name** | string |  The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created. | 
| **automation_account_id** | string |  The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **folder_path** | string |  The folder path of the source control. This Path must be relative. | 
| **repository_url** | string |  The Repository URL of the source control. | 
| **security** | [block](#security-block-structure) |  A `security` block. | 
| **source_control_type** | string |  The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **automatic_sync** | string |  -  |  Whether auto async the Source Control. | 
| **branch** | string |  -  |  Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`. | 
| **description** | string |  -  |  A short description of the Source Control. | 
| **publish_runbook_enabled** | bool |  `True`  |  Whether auto publish the Source Control. Defaults to `true`. | 

### `security` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `token` | string | Yes | - | The access token of specified repo. |
| `token_type` | string | Yes | - | Specify the token type, possible values are 'PersonalAccessToken' and 'Oauth'. |
| `refresh_token` | string | No | - | The refresh token of specified rpeo. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Source Control. | 

Additionally, all variables are provided as outputs.
