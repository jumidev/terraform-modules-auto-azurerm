# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created."
  type        = string

}
variable "sql_pool_id" {
  description = "(REQUIRED) The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created."
  type        = string

}
variable "max_resource_percent" {
  description = "(REQUIRED) The workload group cap percentage resource."
  type        = string

}
variable "min_resource_percent" {
  description = "(REQUIRED) The workload group minimum percentage resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "importance" {
  description = "The workload group importance level. Defaults to 'normal'."
  type        = string
  default     = "normal"
}
variable "max_resource_percent_per_request" {
  description = "The workload group request maximum grant percentage. Defaults to '3'."
  type        = string
  default     = "3"
}
variable "min_resource_percent_per_request" {
  description = "The workload group request minimum grant percentage."
  type        = string
  default     = null
}
variable "query_execution_timeout_in_seconds" {
  description = "The workload group query execution timeout."
  type        = int
  default     = null
}
