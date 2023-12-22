# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Container Apps Managed Environment. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "dapr_application_insights_connection_string" {
  description = "Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "infrastructure_subnet_id" {
  description = "The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "internal_load_balancer_enabled" {
  description = "Should the Container Environment operate in Internal Load Balancing Mode? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "zone_redundancy_enabled" {
  description = "Should the Container App Environment be created with Zone Redundancy enabled? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "log_analytics_workspace_id" {
  description = "The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "workload_profile" {
  description = "The profile of the workload to scope the container app execution. A 'workload_profile' block."
  type        = map(any)
  default     = null
}
#
# workload_profile block structure:
#   name (string)                   : (REQUIRED) The name of the workload profile.
#   workload_profile_type (string)  : (REQUIRED) Workload profile type for the workloads to run on. Possible values include 'D4', 'D8', 'D16', 'D32', 'E4', 'E8', 'E16' and 'E32'.
#   maximum_count (number)          : The maximum number of instances of workload profile that can be deployed in the Container App Environment.
#   minimum_count (number)          : The minimum number of instances of workload profile that can be deployed in the Container App Environment.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
