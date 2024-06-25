# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new Azure PostgreSQL Flexible Server Database to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The ID of the Azure PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Database. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "charset" {
  description = "Specifies the Charset for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Defaults to 'UTF8'. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created."
  type        = string
  default     = "UTF8"
}
variable "collation" {
  description = "Specifies the Collation for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Defaults to 'en_US.utf8'. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created."
  type        = string
  default     = "en_US.utf8"
}
