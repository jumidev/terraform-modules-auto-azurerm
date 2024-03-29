# REQUIRED VARIABLES

variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server on which to set the administrator. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group for the SQL server. Changing this forces a new resource to be created."
  type        = string

}
variable "login" {
  description = "(REQUIRED) The login name of the principal to set as the server administrator"
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The ID of the principal to set as the server administrator"
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Tenant ID"
  type        = string

}

# OPTIONAL VARIABLES

variable "azuread_authentication_only" {
  description = "Specifies whether only AD Users and administrators can be used to login ('true') or also local database users ('false')."
  type        = string
  default     = null
}
variable "sql_server_resource_group_name" {
  description = "Specifies the name of the Resource Group where the SQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
