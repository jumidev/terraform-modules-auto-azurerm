# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created."
  type        = string

}
variable "node_size_family" {
  description = "(REQUIRED) The kind of nodes that the Spark Pool provides. Possible values are 'HardwareAcceleratedFPGA', 'HardwareAcceleratedGPU', 'MemoryOptimized', and 'None'."
  type        = string

}
variable "node_size" {
  description = "(REQUIRED) The level of node in the Spark Pool. Possible values are 'Small', 'Medium', 'Large', 'None', 'XLarge', 'XXLarge' and 'XXXLarge'."
  type        = string

}

# OPTIONAL VARIABLES

variable "node_count" {
  description = "The number of nodes in the Spark Pool. Exactly one of 'node_count' or 'auto_scale' must be specified."
  type        = number
  default     = null
}
variable "auto_scale" {
  description = "An 'auto_scale' block. Exactly one of 'node_count' or 'auto_scale' must be specified."
  type        = map(any)
  default     = null
}
#
# auto_scale block structure:
#   max_node_count (number)   : (REQUIRED) The maximum number of nodes the Spark Pool can support. Must be between '3' and '200'.
#   min_node_count (number)   : (REQUIRED) The minimum number of nodes the Spark Pool can support. Must be between '3' and '200'.


variable "auto_pause" {
  description = "An 'auto_pause' block."
  type        = map(any)
  default     = null
}
#
# auto_pause block structure:
#   delay_in_minutes (number) : (REQUIRED) Number of minutes of idle time before the Spark Pool is automatically paused. Must be between '5' and '10080'.


variable "cache_size" {
  description = "The cache size in the Spark Pool."
  type        = string
  default     = null
}
variable "compute_isolation_enabled" {
  description = "Indicates whether compute isolation is enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "dynamic_executor_allocation_enabled" {
  description = "Indicates whether Dynamic Executor Allocation is enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "min_executors" {
  description = "The minimum number of executors allocated only when 'dynamic_executor_allocation_enabled' set to 'true'."
  type        = number
  default     = null
}
variable "max_executors" {
  description = "The maximum number of executors allocated only when 'dynamic_executor_allocation_enabled' set to 'true'."
  type        = number
  default     = null
}
variable "library_requirement" {
  description = "A 'library_requirement' block."
  type        = map(any)
  default     = null
}
#
# library_requirement block structure:
#   content (string)                   : (REQUIRED) The content of library requirements.
#   filename (string)                  : (REQUIRED) The name of the library requirements file.


variable "session_level_packages_enabled" {
  description = "Indicates whether session level packages are enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "spark_config" {
  description = "A 'spark_config' block."
  type        = map(any)
  default     = null
}
#
# spark_config block structure:
#   content (string)            : (REQUIRED) The contents of a spark configuration.
#   filename (string)           : (REQUIRED) The name of the file where the spark configuration 'content' will be stored.


variable "spark_log_folder" {
  description = "The default folder where Spark logs will be written. Defaults to '/logs'."
  type        = string
  default     = "/logs"
}
variable "spark_events_folder" {
  description = "The Spark events folder. Defaults to '/events'."
  type        = string
  default     = "/events"
}
variable "spark_version" {
  description = "The Apache Spark version. Possible values are '2.4' , '3.1' , '3.2' and '3.3'. Defaults to '2.4'."
  type        = string
  default     = "2.4"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Synapse Spark Pool."
  type        = map(any)
  default     = null
}
