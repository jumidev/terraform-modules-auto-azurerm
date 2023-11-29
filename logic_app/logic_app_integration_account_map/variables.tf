# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created."
  type        = string

}
variable "content" {
  description = "(REQUIRED) The content of the Logic App Integration Account Map."
  type        = string

}
variable "map_type" {
  description = "(REQUIRED) The type of the Logic App Integration Account Map. Possible values are 'Liquid', 'NotSpecified', 'Xslt', 'Xslt30' and 'Xslt20'."
  type        = string

}

# OPTIONAL VARIABLES

variable "metadata" {
  description = "The metadata of the Logic App Integration Account Map."
  type        = string
  default     = null
}
