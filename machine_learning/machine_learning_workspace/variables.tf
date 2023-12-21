# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Machine Learning Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the Machine Learning Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Machine Learning Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "application_insights_id" {
  description = "(REQUIRED) The ID of the Application Insights associated with this Machine Learning Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_id" {
  description = "(REQUIRED) The ID of key vault associated with this Machine Learning Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account associated with this Machine Learning Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Workspace. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Workspace.



# OPTIONAL VARIABLES

variable "container_registry_id" {
  description = "The ID of the container registry associated with this Machine Learning Workspace. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "public_access_behind_virtual_network_enabled" {
  description = "Enable public access when this Machine Learning Workspace is behind a VNet. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Enable public access when this Machine Learning Workspace is behind VNet."
  type        = bool
  default     = null
}
variable "image_build_compute_name" {
  description = "The compute name for image build of the Machine Learning Workspace."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of this Machine Learning Workspace."
  type        = string
  default     = null
}
variable "encryption" {
  description = "An 'encryption' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# encryption block structure        :
#   key_vault_id (string)             : (REQUIRED) The ID of the keyVault where the customer owned encryption key is present.
#   key_id (string)                   : (REQUIRED) The Key Vault URI to access the encryption key.
#   user_assigned_identity_id (string): The Key Vault URI to access the encryption key.


variable "friendly_name" {
  description = "Display name for this Machine Learning Workspace."
  type        = string
  default     = null
}
variable "high_business_impact" {
  description = "Flag to signal High Business Impact (HBI) data in the workspace and reduce diagnostic data collected by the service"
  type        = string
  default     = null
}
variable "primary_user_assigned_identity" {
  description = "The user assigned identity id that represents the workspace identity."
  type        = string
  default     = null
}
variable "v1_legacy_mode_enabled" {
  description = "Enable V1 API features, enabling 'v1_legacy_mode' may prevent you from using features provided by the v2 API. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "sku_name" {
  description = "SKU/edition of the Machine Learning Workspace, possible values are 'Basic'. Defaults to 'Basic'."
  type        = string
  default     = "Basic"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
