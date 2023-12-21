# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_data_lake_gen2_filesystem_id" {
  description = "(REQUIRED) Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be associated with this Synapse Workspace. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Synapse Workspace.


variable "sql_administrator_login" {
  description = "Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided 'aad_admin' or 'customer_managed_key' must be provided."
  type        = string
  default     = null
}
variable "azuread_authentication_only" {
  description = "Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "aad_admin" {
  description = "An 'aad_admin' block. Conflicts with 'customer_managed_key'."
  type        = map(any)
  default     = null
}
#
# aad_admin block structure:
#   login (string)           : (REQUIRED) The login name of the Azure AD Administrator of this Synapse Workspace.
#   object_id (string)       : (REQUIRED) The object id of the Azure AD Administrator of this Synapse Workspace.
#   tenant_id (string)       : (REQUIRED) The tenant id of the Azure AD Administrator of this Synapse Workspace.


variable "compute_subnet_id" {
  description = "Subnet ID used for computes in workspace Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "azure_devops_repo" {
  description = "An 'azure_devops_repo' block."
  type        = map(any)
  default     = null
}
#
# azure_devops_repo block structure:
#   account_name (string)            : (REQUIRED) Specifies the Azure DevOps account name.
#   branch_name (string)             : (REQUIRED) Specifies the collaboration branch of the repository to get code from.
#   last_commit_id (string)          : The last commit ID.
#   project_name (string)            : (REQUIRED) Specifies the name of the Azure DevOps project.
#   repository_name (string)         : (REQUIRED) Specifies the name of the git repository.
#   root_folder (string)             : (REQUIRED) Specifies the root folder within the repository. Set to '/' for the top level.
#   tenant_id (string)               : the ID of the tenant for the Azure DevOps account.


variable "data_exfiltration_protection_enabled" {
  description = "Is data exfiltration protection enabled in this workspace? If set to 'true', 'managed_virtual_network_enabled' must also be set to 'true'. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "customer_managed_key" {
  description = "A 'customer_managed_key' block. Conflicts with 'aad_admin'."
  type        = map(any)
  default     = null
}
#
# customer_managed_key block structure:
#   key_versionless_id (string)         : (REQUIRED) The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption (e.g. 'https://example-keyvault.vault.azure.net/type/cmk/').
#   key_name (string)                   : An identifier for the key. Name needs to match the name of the key used with the 'azurerm_synapse_workspace_key' resource. Defaults to 'cmk' if not specified.


variable "github_repo" {
  description = "A 'github_repo' block."
  type        = map(any)
  default     = null
}
#
# github_repo block structure:
#   account_name (string)      : (REQUIRED) Specifies the GitHub account name.
#   branch_name (string)       : (REQUIRED) Specifies the collaboration branch of the repository to get code from.
#   last_commit_id (string)    : The last commit ID.
#   repository_name (string)   : (REQUIRED) Specifies the name of the git repository.
#   root_folder (string)       : (REQUIRED) Specifies the root folder within the repository. Set to '/' for the top level.
#   git_url (string)           : Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>.


variable "linking_allowed_for_aad_tenant_ids" {
  description = "Allowed AAD Tenant Ids For Linking."
  type        = string
  default     = null
}
variable "managed_resource_group_name" {
  description = "Workspace managed resource group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "managed_virtual_network_enabled" {
  description = "Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the Cognitive Account. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "purview_id" {
  description = "The ID of purview account."
  type        = string
  default     = null
}
variable "sql_aad_admin" {
  description = "An 'sql_aad_admin' block."
  type        = map(any)
  default     = null
}
#
# sql_aad_admin block structure:
#   login (string)               : (REQUIRED) The login name of the Azure AD Administrator of this Synapse Workspace SQL.
#   object_id (string)           : (REQUIRED) The object id of the Azure AD Administrator of this Synapse Workspace SQL.
#   tenant_id (string)           : (REQUIRED) The tenant id of the Azure AD Administrator of this Synapse Workspace SQL.


variable "sql_identity_control_enabled" {
  description = "Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools?"
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Synapse Workspace."
  type        = map(any)
  default     = null
}
