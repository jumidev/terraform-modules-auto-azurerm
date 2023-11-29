# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created."
  type        = string

}
variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Network Manager Network Group."
  type        = string
  default     = null
}
