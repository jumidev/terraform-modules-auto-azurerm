# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the ExpressRoute Port. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created."
  type        = string

}
variable "express_route_port_name" {
  description = "(REQUIRED) The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created."
  type        = string

}
