# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created."
  type        = string

}
