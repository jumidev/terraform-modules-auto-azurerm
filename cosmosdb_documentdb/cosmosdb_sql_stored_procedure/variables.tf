# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created."
  type        = string

}
variable "container_name" {
  description = "(REQUIRED) The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created."
  type        = string

}
variable "body" {
  description = "(REQUIRED) The body of the stored procedure."
  type        = string

}
