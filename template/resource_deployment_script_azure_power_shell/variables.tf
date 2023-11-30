# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created."
  type        = string

}
variable "version" {
  description = "(REQUIRED) Specifies the version of the Azure PowerShell that should be used in the format 'X.Y' (e.g. '9.7'). A canonical list of versions [is available from the Microsoft Container Registry API](https://mcr.microsoft.com/v2/azure-powershell/tags/list). Changing this forces a new Resource Deployment Script to be created."
  type        = string

}
variable "retention_interval" {
  description = "(REQUIRED) Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between '1' hour and '26' hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "command_line" {
  description = "Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = null
}
variable "cleanup_preference" {
  description = "Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are 'Always', 'OnExpiration', 'OnSuccess'. Defaults to 'Always'. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = "Always"
}
variable "container" {
  description = "A 'container' block. Changing this forces a new Resource Deployment Script to be created."
  type        = map(any)
  default     = null
}
#
# container block structure    :
#   container_group_name (string): Container group name, if not specified then the name will get auto-generated. For more information, please refer to the [Container Configuration](https://learn.microsoft.com/en-us/rest/api/resources/deployment-scripts/create?tabs=HTTP#containerconfiguration) documentation.


variable "environment_variable" {
  description = "An 'environment_variable' block. Changing this forces a new Resource Deployment Script to be created."
  type        = map(any)
  default     = null
}
#
# environment_variable block structure:
#   secure_value (string)               : Specifies the value of the secure environment variable.
#   value (string)                      : Specifies the value of the environment variable.


variable "force_update_tag" {
  description = "Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Changing this forces a new Resource Deployment Script to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Type of the managed identity. The only possible value is 'UserAssigned'. Changing this forces a new resource to be created.
#   identity_ids (string)   : (REQUIRED) Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.


variable "primary_script_uri" {
  description = "Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = null
}
variable "script_content" {
  description = "Script body. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = null
}
variable "storage_account" {
  description = "A 'storage_account' block. Changing this forces a new Resource Deployment Script to be created."
  type        = map(any)
  default     = null
}
#
# storage_account block structure:
#   key (string)                   : (REQUIRED) Specifies the storage account access key.


variable "supporting_script_uris" {
  description = "Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = null
}
variable "timeout" {
  description = "Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to 'P1D'. Changing this forces a new Resource Deployment Script to be created."
  type        = string
  default     = "P1D"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Deployment Script."
  type        = map(any)
  default     = null
}
