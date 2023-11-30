# azurerm_spring_cloud_customized_accelerator

Manages a Spring Cloud Customized Accelerator.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_customized_accelerator" 
}

inputs = {
   git_repository = {
      example_git_repository = {
         ...
      }
  
   }
 
   name = "name of spring_cloud_customized_accelerator" 
   spring_cloud_accelerator_id = "spring_cloud_accelerator_id of spring_cloud_customized_accelerator" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.git_repository** | block | True | -  |  -  |  A `git_repository` block. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **var.spring_cloud_accelerator_id** | string | True | -  |  -  |  The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created. | 
| **var.accelerator_tags** | map | False | -  |  -  |  Specifies a list of accelerator tags. | 
| **var.accelerator_type** | string | False | `Accelerator`  |  `Accelerator`, `Fragment`  |  Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`. | 
| **var.description** | string | False | -  |  -  |  Specifies the description of the Spring Cloud Customized Accelerator. | 
| **var.display_name** | string | False | -  |  -  |  Specifies the display name of the Spring Cloud Customized Accelerator.. | 
| **var.icon_url** | string | False | -  |  -  |  Specifies the icon URL of the Spring Cloud Customized Accelerator.. | 

### `git_repository` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | Specifies Git repository URL for the accelerator. |
| `basic_auth` | block | No | - | A 'basic_auth' block. Conflicts with 'git_repository.0.ssh_auth'. Changing this forces a new Spring Cloud Customized Accelerator to be created. |
| `branch` | string | No | - | Specifies the Git repository branch to be used. |
| `ca_certificate_id` | string | No | - | Specifies the ID of the CA Spring Cloud Certificate for https URL of Git repository. |
| `commit` | string | No | - | Specifies the Git repository commit to be used. |
| `git_tag` | string | No | - | Specifies the Git repository tag to be used. |
| `interval_in_seconds` | int | No | - | Specifies the interval for checking for updates to Git or image repository. It should be greater than 10. |
| `ssh_auth` | block | No | - | A 'ssh_auth' block. Conflicts with 'git_repository.0.basic_auth'. Changing this forces a new Spring Cloud Customized Accelerator to be created. |
| `path` | string | No | - | Specifies the path under the git repository to be treated as the root directory of the accelerator or the fragment (depending on 'accelerator_type'). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Customized Accelerator. | 

Additionally, all variables are provided as outputs.
