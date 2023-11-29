# REQUIRED VARIABLES

variable "mssql_server_id" {
  description = "(REQUIRED) The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created."
  type        = string

}
