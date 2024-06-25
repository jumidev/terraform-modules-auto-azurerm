# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created. -> **Note:** PostgreSQL provides the ability to extend the functionality using azure extensions, with PostgreSQL azure extensions you should specify the 'name' value as 'azure.extensions' and the 'value' you wish to allow in the [extensions list](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-extensions?WT.mc_id=Portal-Microsoft_Azure_OSSDatabases#extension-versions)."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource."
  type        = string

}
variable "value" {
  description = "(REQUIRED) Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values."
  type        = string

}
