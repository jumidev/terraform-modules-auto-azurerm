# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "value" {
  description = "(REQUIRED) Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values."
  type        = string

}

# OPTIONAL VARIABLES

variable "mysql_flexible_server_resource_group_name" {
  description = "The name of the resource group for the MySQL Flexible Server..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
