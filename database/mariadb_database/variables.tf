# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MariaDB Database, which needs [to be a valid MariaDB identifier](https://mariadb.com/kb/en/library/identifier-names/). Changing this forces a new resource to be created."
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
variable "charset" {
  description = "(REQUIRED) Specifies the Charset for the MariaDB Database, which needs [to be a valid MariaDB Charset](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created."
  type        = string

}
variable "collation" {
  description = "(REQUIRED) Specifies the Collation for the MariaDB Database, which needs [to be a valid MariaDB Collation](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created."
  type        = string

}
