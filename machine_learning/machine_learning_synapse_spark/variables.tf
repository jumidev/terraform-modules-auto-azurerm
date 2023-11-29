# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = string

}
variable "machine_learning_workspace_id" {
  description = "(REQUIRED) The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = string

}
variable "synapse_spark_pool_id" {
  description = "(REQUIRED) The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Synapse Spark. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Synapse Spark. Changing this forces a new resource to be created.


variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled. Defaults to 'true'. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created."
  type        = map(any)
  default     = null
}
