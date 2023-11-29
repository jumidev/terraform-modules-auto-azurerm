# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the ExpressRoute circuit. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created."
  type        = string

}
variable "express_route_circuit_name" {
  description = "(REQUIRED) The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "express_route_circuit_resource_group_name" {
  description = "The Name of the Resource Group where the ExpressRoute circuit exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
