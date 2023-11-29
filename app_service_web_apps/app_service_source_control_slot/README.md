# azurerm_app_service_source_control_slot

Manages an App Service Source Control Slot.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.slot_id** | string | True | -  |  -  | The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created. | 
| **var.branch** | string | False | -  |  -  | The URL for the repository. Changing this forces a new resource to be created. | 
| **var.github_action_configuration** | block | False | -  |  -  | A `github_action_configuration` block as detailed below. Changing this forces a new resource to be created. | 
| **var.repo_url** | string | False | -  |  -  | The branch name to use for deployments. Changing this forces a new resource to be created. | 
| **var.rollback_enabled** | bool | False | `False`  |  -  | Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created. | 
| **var.use_local_git** | bool | False | -  |  -  | Should the Slot use local Git configuration. Changing this forces a new resource to be created. | 
| **var.use_manual_integration** | bool | False | `False`  |  -  | Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.use_mercurial** | bool | False | `False`  |  -  | The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **slot_id** | string  | - | 
| **branch** | string  | - | 
| **github_action_configuration** | block  | - | 
| **repo_url** | string  | - | 
| **rollback_enabled** | bool  | - | 
| **use_local_git** | bool  | - | 
| **use_manual_integration** | bool  | - | 
| **use_mercurial** | bool  | - | 
| **id** | string  | The ID of the App Service Source Control Slot | 
| **scm_type** | string  | The SCM Type in use. This value is decoded by the service from the repository information supplied. | 
| **uses_github_action** | string  | Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied. | 