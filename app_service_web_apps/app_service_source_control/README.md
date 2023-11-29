# azurerm_app_service_source_control

Manages an App Service Web App or Function App Source Control Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **app_id** | string | True | -  |  -  | The ID of the Windows or Linux Web App. Changing this forces a new resource to be created. | 
| **branch** | string | False | -  |  -  | The branch name to use for deployments. Changing this forces a new resource to be created. | 
| **repo_url** | string | False | -  |  -  | The URL for the repository. Changing this forces a new resource to be created. | 
| **github_action_configuration** | block | False | -  |  -  | A `github_action_configuration` block. Changing this forces a new resource to be created. | 
| **use_manual_integration** | bool | False | `False`  |  -  | Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created. | 
| **rollback_enabled** | bool | False | `False`  |  -  | Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **use_local_git** | bool | False | -  |  -  | Should the App use local Git configuration. Changing this forces a new resource to be created. | 
| **use_mercurial** | bool | False | `False`  |  -  | The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created. | 

