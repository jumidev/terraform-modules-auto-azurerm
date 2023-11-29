# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "github_configuration" {
  description = "A 'github_configuration' block."
  type        = map(any)
  default     = null
}
#
# github_configuration block structure:
#   account_name (string)               : (REQUIRED) Specifies the GitHub account name.
#   branch_name (string)                : (REQUIRED) Specifies the branch of the repository to get code from.
#   git_url (string)                    : (REQUIRED) Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>. Use <https://github.com> for open source repositories.
#   repository_name (string)            : (REQUIRED) Specifies the name of the git repository.
#   root_folder (string)                : (REQUIRED) Specifies the root folder within the repository. Set to '/' for the top level.
#   publishing_enabled (bool)           : Is automated publishing enabled? Defaults to 'true'.


variable "global_parameter" {
  description = "A list of 'global_parameter' blocks."
  type        = map(map(any))
  default     = null
}
#
# global_parameter block structure:
#   name (string)                   : (REQUIRED) Specifies the global parameter name.
#   type (string)                   : (REQUIRED) Specifies the global parameter type. Possible Values are 'Array', 'Bool', 'Float', 'Int', 'Object' or 'String'.
#   value (string)                  : (REQUIRED) Specifies the global parameter value.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Data Factory. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Data Factory.


variable "vsts_configuration" {
  description = "A 'vsts_configuration' block."
  type        = map(any)
  default     = null
}
#
# vsts_configuration block structure:
#   account_name (string)             : (REQUIRED) Specifies the VSTS account name.
#   branch_name (string)              : (REQUIRED) Specifies the branch of the repository to get code from.
#   project_name (string)             : (REQUIRED) Specifies the name of the VSTS project.
#   repository_name (string)          : (REQUIRED) Specifies the name of the git repository.
#   root_folder (string)              : (REQUIRED) Specifies the root folder within the repository. Set to '/' for the top level.
#   tenant_id (string)                : (REQUIRED) Specifies the Tenant ID associated with the VSTS account.
#   publishing_enabled (bool)         : Is automated publishing enabled? Defaults to 'true'.


variable "managed_virtual_network_enabled" {
  description = "Is Managed Virtual Network enabled?"
  type        = bool
  default     = null
}
variable "public_network_enabled" {
  description = "Is the Data Factory visible to the public network? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "customer_managed_key_id" {
  description = "Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity."
  type        = string
  default     = null
}
variable "customer_managed_key_identity_id" {
  description = "Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied if 'customer_managed_key_id' is set."
  type        = string
  default     = null
}
variable "purview_id" {
  description = "Specifies the ID of the purview account resource associated with the Data Factory."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
