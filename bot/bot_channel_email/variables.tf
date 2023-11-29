# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "email_address" {
  description = "(REQUIRED) The email address that the Bot will authenticate with."
  type        = string

}
