# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Application Gateway for Containers (ALB)."
  type        = map(any)
  default     = null
}

# OPTIONAL VARIABLES

variable "application_load_balancer_subnet_association" {
  type    = map(any)
  default = null
}
