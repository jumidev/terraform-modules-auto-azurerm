# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}
