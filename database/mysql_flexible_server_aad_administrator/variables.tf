# REQUIRED VARIABLES

variable "server_id" {
  description = "(REQUIRED) The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created."
  type        = string

}
variable "identity_id" {
  description = "(REQUIRED) The resource ID of the identity used for AAD Authentication."
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
  description = "(REQUIRED) The Azure Tenant ID."
  type        = string

}
