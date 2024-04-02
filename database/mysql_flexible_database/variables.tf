# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "charset" {
  description = "(REQUIRED) Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created."
  type        = string

}
variable "collation" {
  description = "(REQUIRED) Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created."
  type        = string

}
