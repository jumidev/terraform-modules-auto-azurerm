# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created."
  type        = string

}
variable "management_group_id" {
  description = "(REQUIRED) Specifies the ID of the target Management Group. Changing this forces a new resource to be created."
  type        = string

}
variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Network Manager Management Group Connection."
  type        = string
  default     = null
}
