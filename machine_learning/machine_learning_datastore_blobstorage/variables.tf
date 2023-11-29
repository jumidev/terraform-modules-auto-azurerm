# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created."
  type        = string

}
variable "storage_container_id" {
  description = "(REQUIRED) The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "account_key" {
  description = "The access key of the Storage Account. Conflicts with 'shared_access_signature'."
  type        = string
  default     = null
}
variable "shared_access_signature" {
  description = "The Shared Access Signature of the Storage Account. Conflicts with 'account_key'."
  type        = string
  default     = null
}
variable "description" {
  description = "Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created."
  type        = string
  default     = null
}
variable "is_default" {
  description = "Specifies whether this Machines Learning DataStore is the default for the Workspace. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "service_data_auth_identity" {
  description = "Specifies which identity to use when retrieving data from the specified source. Defaults to 'None'. Possible values are 'None', 'WorkspaceSystemAssignedIdentity' and 'WorkspaceUserAssignedIdentity'."
  type        = string
  default     = "None"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created."
  type        = map(any)
  default     = null
}
