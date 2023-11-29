# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the MariaDB Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the MariaDB server resides. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server to which this MariaDB virtual network rule will be applied to. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet that the MariaDB server will be connected to."
  type        = string

}

# OPTIONAL VARIABLES

variable "mariadb_server_resource_group_name" {
  description = "The name of the resource group where the MariaDB Server exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
