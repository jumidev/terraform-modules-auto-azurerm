# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specify the name of the database migration project. Changing this forces a new resource to be created."
  type        = string

}
variable "service_name" {
  description = "(REQUIRED) Name of the database migration service where resource belongs to. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "source_platform" {
  description = "(REQUIRED) The platform type of the migration source. Currently only support: 'SQL'(on-premises SQL Server). Changing this forces a new resource to be created."
  type        = string

}
variable "target_platform" {
  description = "(REQUIRED) The platform type of the migration target. Currently only support: 'SQLDB'(Azure SQL Database). Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assigned to the resource."
  type        = map(any)
  default     = null
}
