# azurerm_app_service_source_control

Manages an App Service Web App or Function App Source Control Configuration.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **app_id** | string |  The ID of the Windows or Linux Web App. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **branch** | string |  -  |  The branch name to use for deployments. Changing this forces a new resource to be created. | 
| **repo_url** | string |  -  |  The URL for the repository. Changing this forces a new resource to be created. | 
| **github_action_configuration** | [block](#github_action_configuration-block-structure) |  -  |  A `github_action_configuration` block. Changing this forces a new resource to be created. | 
| **use_manual_integration** | bool |  `False`  |  Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created. | 
| **rollback_enabled** | bool |  `False`  |  Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **use_local_git** | bool |  -  |  Should the App use local Git configuration. Changing this forces a new resource to be created. | 
| **use_mercurial** | bool |  `False`  |  The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created. | 

### `container_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `image_name` | string | Yes | - | The image name for the build. Changing this forces a new resource to be created. |
| `registry_url` | string | Yes | - | The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created. |
| `registry_password` | string | No | - | The password used to upload the image to the container registry. Changing this forces a new resource to be created. |
| `registry_username` | string | No | - | The username used to upload the image to the container registry. Changing this forces a new resource to be created. |

### `code_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `runtime_stack` | string | Yes | - | The value to use for the Runtime Stack in the workflow file content for code base apps. Possible values are 'dotnetcore', 'spring', 'tomcat', 'node' and 'python'. Changing this forces a new resource to be created. |
| `runtime_version` | string | Yes | - | The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created. |

### `github_action_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `code_configuration` | [block](#github_action_configuration-block-structure) | No | - | A 'code_configuration' block. Changing this forces a new resource to be created. |
| `container_configuration` | [block](#github_action_configuration-block-structure) | No | - | A 'container_configuration' block. |
| `generate_workflow_file` | bool | No | True | Whether to generate the GitHub work flow file. Defaults to 'true'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Source Control. | 
| **uses_github_action** | string | No  | Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied. | 
| **scm_type** | string | No  | The SCM Type in use. This value is decoded by the service from the repository information supplied. | 

Additionally, all variables are provided as outputs.
