# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Synapse Azure Integration Runtime should exist. Use 'AutoResolve' to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "compute_type" {
  description = "Compute type of the cluster which will execute data flow job. Valid values are 'General', 'ComputeOptimized' and 'MemoryOptimized'. Defaults to 'General'."
  type        = string
  default     = "General"
}
variable "core_count" {
  description = "Core count of the cluster which will execute data flow job. Valid values are '8', '16', '32', '48', '80', '144' and '272'. Defaults to '8'."
  type        = string
  default     = "8"
}
variable "description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}
variable "time_to_live_min" {
  description = "Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to '0'."
  type        = string
  default     = "0"
}
