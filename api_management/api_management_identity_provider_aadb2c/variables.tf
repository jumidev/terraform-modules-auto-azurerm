# REQUIRED VARIABLES

variable "api_management_name" {
  description = "(REQUIRED) The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) Client ID of the Application in your B2C tenant."
  type        = string

}
variable "client_secret" {
  description = "(REQUIRED) Client secret of the Application in your B2C tenant."
  type        = string

}
variable "allowed_tenant" {
  description = "(REQUIRED) The allowed AAD tenant, usually your B2C tenant domain."
  type        = string

}
variable "signin_tenant" {
  description = "(REQUIRED) The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain."
  type        = string

}
variable "authority" {
  description = "(REQUIRED) OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain."
  type        = string

}
variable "signin_policy" {
  description = "(REQUIRED) Signin Policy Name."
  type        = string

}
variable "signup_policy" {
  description = "(REQUIRED) Signup Policy Name."
  type        = string

}

# OPTIONAL VARIABLES

variable "password_reset_policy" {
  description = "Password reset Policy Name."
  type        = string
  default     = null
}
variable "profile_editing_policy" {
  description = "Profile editing Policy Name."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
