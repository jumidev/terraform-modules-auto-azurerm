# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this SQL Notebook Workspace. Possible value is 'default'. Changing this forces a new SQL Notebook Workspace to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the SQL Notebook Workspace should exist. Changing this forces a new SQL Notebook Workspace to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB Account to create the SQL Notebook Workspace within. Changing this forces a new SQL Notebook Workspace to be created."
  type        = string

}
