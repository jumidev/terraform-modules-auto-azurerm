# azurerm_resource_deployment_script_azure_power_shell

Manages a Resource Deployment Script of Azure PowerShell.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created. | 
| **var.version** | string | True | -  |  -  |  Specifies the version of the Azure PowerShell that should be used in the format `X.Y` (e.g. `9.7`). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-powershell/tags/list). Changing this forces a new Resource Deployment Script to be created. | 
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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **version** | string  | - | 
| **retention_interval** | string  | - | 
| **command_line** | string  | - | 
| **cleanup_preference** | string  | - | 
| **container** | block  | - | 
| **environment_variable** | block  | - | 
| **force_update_tag** | string  | - | 
| **identity** | block  | - | 
| **primary_script_uri** | string  | - | 
| **script_content** | string  | - | 
| **storage_account** | block  | - | 
| **supporting_script_uris** | string  | - | 
| **timeout** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Resource Deployment Script. | 
| **outputs** | string  | List of script outputs. | 