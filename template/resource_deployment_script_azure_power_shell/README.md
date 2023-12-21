# azurerm_resource_deployment_script_azure_power_shell

Manages a Resource Deployment Script of Azure PowerShell.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "template/resource_deployment_script_azure_power_shell"   
}

inputs = {
   name = "Specifies the name which should be used for this Resource Deployment Script..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   version = "Specifies the version of the Azure PowerShell that should be used in the format ..."   
   retention_interval = "Interval for which the service retains the script resource after it reaches a te..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created. | 
| **location** | string |  -  |  Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created. | 
| **version** | string |  `X.Y`, `9.7`  |  Specifies the version of the Azure PowerShell that should be used in the format `X.Y` (e.g. `9.7`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-powershell/tags/list). Changing this forces a new Resource Deployment Script to be created. | 
| **retention_interval** | string |  -  |  Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **command_line** | string |  -  |  -  |  Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created. | 
| **cleanup_preference** | string |  `Always`  |  `Always`, `OnExpiration`, `OnSuccess`  |  Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created. | 
| **container** | [block](#container-block-structure) |  -  |  -  |  A `container` block. Changing this forces a new Resource Deployment Script to be created. | 
| **environment_variable** | [block](#environment_variable-block-structure) |  -  |  -  |  An `environment_variable` block. Changing this forces a new Resource Deployment Script to be created. | 
| **force_update_tag** | string |  -  |  -  |  Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. Changing this forces a new Resource Deployment Script to be created. | 
| **primary_script_uri** | string |  -  |  -  |  Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created. | 
| **script_content** | string |  -  |  -  |  Script body. Changing this forces a new Resource Deployment Script to be created. | 
| **storage_account** | [block](#storage_account-block-structure) |  -  |  -  |  A `storage_account` block. Changing this forces a new Resource Deployment Script to be created. | 
| **supporting_script_uris** | string |  -  |  -  |  Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created. | 
| **timeout** | string |  `P1D`  |  -  |  Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Resource Deployment Script. | 

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key` | string | Yes | - | Specifies the storage account access key. |
| `name` | string | Yes | - | Specifies the storage account name. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Type of the managed identity. The only possible value is 'UserAssigned'. Changing this forces a new resource to be created. |
| `identity_ids` | string | Yes | - | Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created. |

### `container` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_group_name` | string | No | - | Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation. |

### `environment_variable` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the environment variable. |
| `secure_value` | string | No | - | Specifies the value of the secure environment variable. |
| `value` | string | No | - | Specifies the value of the environment variable. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Deployment Script. | 
| **outputs** | string | No  | List of script outputs. | 

Additionally, all variables are provided as outputs.
