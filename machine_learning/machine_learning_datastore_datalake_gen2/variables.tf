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

variable "tenant_id" {
  description = "The ID of the Tenant which the Service Principal belongs to."
  type        = string
  default     = null
}
variable "client_id" {
  description = "The object ID of the Service Principal."
  type        = string
  default     = null
}
variable "client_secret" {
  description = "The secret of the Service Principal."
  type        = string
  default     = null
}
variable "authority_url" {
  description = "An URL used for authentication."
  type        = string
  default     = null
}
variable "description" {
  description = "Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created."
  type        = string
  default     = null
}
variable "service_data_identity" {
  description = "Specifies which identity to use when retrieving data from the specified source. Defaults to 'None'. Possible values are 'None', 'WorkspaceSystemAssignedIdentity' and 'WorkspaceUserAssignedIdentity'."
  type        = string
  default     = "None"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created."
  type        = map(any)
  default     = null
}
