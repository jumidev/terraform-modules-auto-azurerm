# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created."
  type        = string

}
variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created."
  type        = string

}
variable "target_scope_id" {
  description = "(REQUIRED) Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) Specifies the Tenant ID of the Resource which the Network Manager is connected to."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Network Manager Scope Connection."
  type        = string
  default     = null
}
