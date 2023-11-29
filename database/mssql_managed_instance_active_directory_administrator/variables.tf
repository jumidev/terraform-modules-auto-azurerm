# REQUIRED VARIABLES

variable "managed_instance_id" {
  description = "(REQUIRED) The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created."
  type        = string

}
variable "login_username" {
  description = "(REQUIRED) The login name of the principal to set as the Managed Instance Administrator."
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The Object ID of the principal to set as the Managed Instance Administrator."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Active Directory Tenant ID."
  type        = string

}

# OPTIONAL VARIABLES

variable "azuread_authentication_only" {
  description = "When 'true', only permit logins from AAD users and administrators. When 'false', also allow local database users."
  type        = string
  default     = null
}
