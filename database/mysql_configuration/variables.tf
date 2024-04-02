# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MySQL Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MySQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "value" {
  description = "(REQUIRED) Specifies the value of the MySQL Configuration. See the MySQL documentation for valid values. Changing this forces a new resource to be created."
  type        = string

}
