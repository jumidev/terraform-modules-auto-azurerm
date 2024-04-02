# REQUIRED VARIABLES

variable "server_name" {
  description = "(REQUIRED) The name of the MySQL Server on which to set the administrator. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group for the MySQL server. Changing this forces a new resource to be created."
  type        = string

}
variable "login" {
  description = "(REQUIRED) The login name of the principal to set as the server administrator"
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Tenant ID"
  type        = string

}
