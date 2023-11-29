# REQUIRED VARIABLES

variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "email" {
  description = "(REQUIRED) The email address associated with this user."
  type        = string

}
variable "first_name" {
  description = "(REQUIRED) The first name for this user."
  type        = string

}
variable "last_name" {
  description = "(REQUIRED) The last name for this user."
  type        = string

}
variable "user_id" {
  description = "(REQUIRED) The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "confirmation" {
  description = "The kind of confirmation email which will be sent to this user. Possible values are 'invite' and 'signup'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "note" {
  description = "A note about this user."
  type        = string
  default     = null
}
variable "password" {
  description = "The password associated with this user."
  type        = string
  default     = null
}
variable "state" {
  description = "The state of this user. Possible values are 'active', 'blocked' and 'pending'."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
