# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created."
  type        = string

}
variable "content" {
  description = "(REQUIRED) The content of the Logic App Integration Account Schema."
  type        = string

}

# OPTIONAL VARIABLES

variable "file_name" {
  description = "The file name of the Logic App Integration Account Schema."
  type        = string
  default     = null
}
variable "metadata" {
  description = "The metadata of the Logic App Integration Account Schema."
  type        = string
  default     = null
}
