# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created."
  type        = string

}
variable "content" {
  description = "(REQUIRED) The content of the Logic App Integration Account Session."
  type        = string

}
