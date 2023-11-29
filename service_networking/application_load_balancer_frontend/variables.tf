# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created."
  type        = string

}
variable "application_load_balancer_id" {
  description = "(REQUIRED) The ID of the Application Gateway for Containers. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Application Gateway for Containers Frontend."
  type        = map(any)
  default     = null
}
