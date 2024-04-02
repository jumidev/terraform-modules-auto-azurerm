# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MariaDB Configuration, which needs [to be a valid MariaDB configuration name](https://mariadb.com/kb/en/library/server-system-variables/). Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MariaDB Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "value" {
  description = "(REQUIRED) Specifies the value of the MariaDB Configuration. See the MariaDB documentation for valid values. Changing this forces a new resource to be created."
  type        = string

}
