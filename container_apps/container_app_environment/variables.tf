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
variable "infrastructure_resource_group_name" {
  description = "Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created. ~> **Note:** Only valid if a 'workload_profile' is specified. If 'infrastructure_subnet_id' is specified, this resource group will be created in the same subscription as 'infrastructure_subnet_id'."
  type        = string
  default     = null
}
variable "infrastructure_subnet_id" {
  description = "The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created. ~> **NOTE:** The Subnet must have a '/21' or larger address space."
  type        = string
  default     = null
}
variable "internal_load_balancer_enabled" {
  description = "Should the Container Environment operate in Internal Load Balancing Mode? Defaults to 'false'. Changing this forces a new resource to be created. ~> **Note:** can only be set to 'true' if 'infrastructure_subnet_id' is specified."
  type        = bool
  default     = false
}
variable "zone_redundancy_enabled" {
  description = "Should the Container App Environment be created with Zone Redundancy enabled? Defaults to 'false'. Changing this forces a new resource to be created. ~> **Note:** can only be set to 'true' if 'infrastructure_subnet_id' is specified."
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
#   workload_profile_type (string)  : (REQUIRED) Workload profile type for the workloads to run on. Possible values include 'Consumption', 'D4', 'D8', 'D16', 'D32', 'E4', 'E8', 'E16' and 'E32'. ~> **NOTE:** A 'Consumption' type must have a name of 'Consumption' and an environment may only have one 'Consumption' Workload Profile. ~> **NOTE:** Defining a 'Consumption' profile is optional, however, Environments created without an initial Workload Profile cannot have them added at a later time and must be recreated. Similarly, an environment created with Profiles must always have at least one defined Profile, removing all profiles will force a recreation of the resource.
#   maximum_count (number)          : (REQUIRED) The maximum number of instances of workload profile that can be deployed in the Container App Environment.
#   minimum_count (number)          : (REQUIRED) The minimum number of instances of workload profile that can be deployed in the Container App Environment.


variable "mutual_tls_enabled" {
  description = "Should mutual transport layer security (mTLS) be enabled? Defaults to 'false'. ~> **Note:** This feature is in public preview. Enabling mTLS for your applications may increase response latency and reduce maximum throughput in high-load scenarios."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
