# azurerm_app_service_source_control

Manages an App Service Web App or Function App Source Control Configuration.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.app_id** | string | True | -  |  The ID of the Windows or Linux Web App. Changing this forces a new resource to be created. | 
| **var.branch** | string | False | -  |  The branch name to use for deployments. Changing this forces a new resource to be created. | 
| **var.repo_url** | string | False | -  |  The URL for the repository. Changing this forces a new resource to be created. | 
| **var.github_action_configuration** | block | False | -  |  A `github_action_configuration` block. Changing this forces a new resource to be created. | 
| **var.use_manual_integration** | bool | False | `False`  |  Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.rollback_enabled** | bool | False | `False`  |  Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.use_local_git** | bool | False | -  |  Should the App use local Git configuration. Changing this forces a new resource to be created. | 
| **var.use_mercurial** | bool | False | `False`  |  The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **app_id** | string  | - | 
| **branch** | string  | - | 
| **repo_url** | string  | - | 
| **github_action_configuration** | block  | - | 
| **use_manual_integration** | bool  | - | 
| **rollback_enabled** | bool  | - | 
| **use_local_git** | bool  | - | 
| **use_mercurial** | bool  | - | 
| **id** | string  | The ID of the App Service Source Control. | 
| **uses_github_action** | string  | Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied. | 
| **scm_type** | string  | The SCM Type in use. This value is decoded by the service from the repository information supplied. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_source_control" 
}

inputs = {
   app_id = "app_id of app_service_source_control" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```