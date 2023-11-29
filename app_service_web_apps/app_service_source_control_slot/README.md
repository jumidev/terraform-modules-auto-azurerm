# azurerm_app_service_source_control_slot

Manages an App Service Source Control Slot.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **slot_id** | string | True | -  |  -  | The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created. | 
| **branch** | string | False | -  |  -  | The URL for the repository. Changing this forces a new resource to be created. | 
| **github_action_configuration** | block | False | -  |  -  | A `github_action_configuration` block as detailed below. Changing this forces a new resource to be created. | 
| **repo_url** | string | False | -  |  -  | The branch name to use for deployments. Changing this forces a new resource to be created. | 
| **rollback_enabled** | bool | False | `False`  |  -  | Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created. | 
| **use_local_git** | bool | False | -  |  -  | Should the Slot use local Git configuration. Changing this forces a new resource to be created. | 
| **use_manual_integration** | bool | False | `False`  |  -  | Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created. | 
| **use_mercurial** | bool | False | `False`  |  -  | The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created. | 

