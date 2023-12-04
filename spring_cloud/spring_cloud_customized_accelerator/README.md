# azurerm_spring_cloud_customized_accelerator

Manages a Spring Cloud Customized Accelerator.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_customized_accelerator" 
}

inputs = {
   git_repository = {
      example_git_repository = {
         url = "..."   
      }
  
   }
 
   name = "name of spring_cloud_customized_accelerator" 
   # spring_cloud_accelerator_id → set in tfstate_inputs
}

tfstate_inputs = {
   spring_cloud_accelerator_id = "path/to/spring_cloud_accelerator_component:id" 
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
| **git_repository** | [block](#git_repository-block-structure) |  A `git_repository` block. | 
| **name** | string |  The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **spring_cloud_accelerator_id** | string |  The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **accelerator_tags** | map |  -  |  -  |  Specifies a list of accelerator tags. | 
| **accelerator_type** | string |  `Accelerator`  |  `Accelerator`, `Fragment`  |  Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`. | 
| **description** | string |  -  |  -  |  Specifies the description of the Spring Cloud Customized Accelerator. | 
| **display_name** | string |  -  |  -  |  Specifies the display name of the Spring Cloud Customized Accelerator.. | 
| **icon_url** | string |  -  |  -  |  Specifies the icon URL of the Spring Cloud Customized Accelerator.. | 

### `git_repository` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | Specifies Git repository URL for the accelerator. |
| `basic_auth` | [block](#git_repository-block-structure) | No | - | A 'basic_auth' block. Conflicts with 'git_repository.0.ssh_auth'. Changing this forces a new Spring Cloud Customized Accelerator to be created. |
| `branch` | string | No | - | Specifies the Git repository branch to be used. |
| `ca_certificate_id` | string | No | - | Specifies the ID of the CA Spring Cloud Certificate for https URL of Git repository. |
| `commit` | string | No | - | Specifies the Git repository commit to be used. |
| `git_tag` | string | No | - | Specifies the Git repository tag to be used. |
| `interval_in_seconds` | int | No | - | Specifies the interval for checking for updates to Git or image repository. It should be greater than 10. |
| `ssh_auth` | [block](#git_repository-block-structure) | No | - | A 'ssh_auth' block. Conflicts with 'git_repository.0.basic_auth'. Changing this forces a new Spring Cloud Customized Accelerator to be created. |
| `path` | string | No | - | Specifies the path under the git repository to be treated as the root directory of the accelerator or the fragment (depending on 'accelerator_type'). |

### `ssh_auth` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_key` | string | Yes | - | Specifies the Private SSH Key of git repository basic auth. |
| `host_key` | string | No | - | Specifies the Public SSH Key of git repository basic auth. |
| `host_key_algorithm` | string | No | - | Specifies the SSH Key algorithm of git repository basic auth. |

### `basic_auth` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `password` | string | Yes | - | Specifies the password of git repository basic auth. |
| `username` | string | Yes | - | Specifies the username of git repository basic auth. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Customized Accelerator. | 

Additionally, all variables are provided as outputs.
