# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_name" {
  description = "(REQUIRED) The name of the cluster in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_id" {
  description = "(REQUIRED) The object id of the principal. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_type" {
  description = "(REQUIRED) The type of the principal. Valid values include 'App', 'Group', 'User'. Changing this forces a new resource to be created."
  type        = string

}
variable "role" {
  description = "(REQUIRED) The cluster role assigned to the principal. Valid values include 'AllDatabasesAdmin' and 'AllDatabasesViewer'. Changing this forces a new resource to be created."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The tenant id in which the principal resides. Changing this forces a new resource to be created."
  type        = string

}
