# REQUIRED VARIABLES

variable "server_name" {
  description = "(REQUIRED) The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Tenant ID. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_name" {
  description = "(REQUIRED) The name of Azure Active Directory principal. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_type" {
  description = "(REQUIRED) The type of Azure Active Directory principal. Possible values are 'Group', 'ServicePrincipal' and 'User'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "postgresql_server_resource_group_name" {
  description = "Specifies the name of the Resource Group where the PostgreSQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
