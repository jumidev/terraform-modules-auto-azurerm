# azurerm_resource_deployment_script_azure_cli

Manages a Resource Deployment Script of Azure Cli.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "template/resource_deployment_script_azure_cli" 
}

inputs = {
   name = "name of resource_deployment_script_azure_cli" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   version = "version of resource_deployment_script_azure_cli" 
   retention_interval = "retention_interval of resource_deployment_script_azure_cli" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created. | 
| **var.version** | string | True | -  |  -  |  Specifies the version of the Azure CLI that should be used in the format `X.Y.Z` (e.g. `2.30.0`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-cli/tags/list). Changing this forces a new Resource Deployment Script to be created. | 
| **var.retention_interval** | string | True | -  |  -  |  Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between `1` hour and `26` hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created. | 
| **var.command_line** | string | False | -  |  -  |  Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created. | 
| **var.cleanup_preference** | string | False | `Always`  |  `Always`, `OnExpiration`, `OnSuccess`  |  Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are `Always`, `OnExpiration`, `OnSuccess`. Defaults to `Always`. Changing this forces a new Resource Deployment Script to be created. | 
| **var.container** | block | False | -  |  -  |  A `container` block. Changing this forces a new Resource Deployment Script to be created. | 
| **var.environment_variable** | block | False | -  |  -  |  An `environment_variable` block. Changing this forces a new Resource Deployment Script to be created. | 
| **var.force_update_tag** | string | False | -  |  -  |  Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. Changing this forces a new Resource Deployment Script to be created. | 
| **var.primary_script_uri** | string | False | -  |  -  |  Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created. | 
| **var.script_content** | string | False | -  |  -  |  Script body. Changing this forces a new Resource Deployment Script to be created. | 
| **var.storage_account** | block | False | -  |  -  |  A `storage_account` block. Changing this forces a new Resource Deployment Script to be created. | 
| **var.supporting_script_uris** | string | False | -  |  -  |  Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created. | 
| **var.timeout** | string | False | `P1D`  |  -  |  Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to `P1D`. Changing this forces a new Resource Deployment Script to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Resource Deployment Script. | 

### `container` block structure

> `container_group_name` (string): Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation.

### `environment_variable` block structure

> `name` (string): (REQUIRED) Specifies the name of the environment variable.
> `secure_value` (string): Specifies the value of the secure environment variable.
> `value` (string): Specifies the value of the environment variable.

### `identity` block structure

> `type` (string): (REQUIRED) Type of the managed identity. The only possible value is 'UserAssigned'. Changing this forces a new resource to be created.
> `identity_ids` (string): (REQUIRED) Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.

### `storage_account` block structure

> `key` (string): (REQUIRED) Specifies the storage account access key.
> `name` (string): (REQUIRED) Specifies the storage account name.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Deployment Script. | 
| **outputs** | string | No  | List of script outputs. | 

Additionally, all variables are provided as outputs.
