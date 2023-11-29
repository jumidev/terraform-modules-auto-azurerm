# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created."
  type        = string

}
variable "security_admin_configuration_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created."
  type        = string

}
variable "network_group_ids" {
  description = "(REQUIRED) A list of Network Group ID which this Network Manager Admin Rule Collection applies to."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Network Manager Admin Rule Collection."
  type        = string
  default     = null
}
