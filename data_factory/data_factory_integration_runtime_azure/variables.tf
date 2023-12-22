# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Use 'AutoResolve' to create an auto-resolve integration runtime. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}
variable "cleanup_enabled" {
  description = "Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as 'false'. Default is 'true'."
  type        = bool
  default     = true
}
variable "compute_type" {
  description = "Compute type of the cluster which will execute data flow job. Valid values are 'General', 'ComputeOptimized' and 'MemoryOptimized'. Defaults to 'General'."
  type        = string
  default     = "General"
}
variable "core_count" {
  description = "Core count of the cluster which will execute data flow job. Valid values are '8', '16', '32', '48', '80', '144' and '272'. Defaults to '8'."
  type        = number
  default     = 8
}
variable "time_to_live_min" {
  description = "Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to '0'."
  type        = string
  default     = "0"
}
variable "virtual_network_enabled" {
  description = "Is Integration Runtime compute provisioned within Managed Virtual Network? Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
