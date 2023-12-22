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

# OPTIONAL VARIABLES

variable "cosmosdb_account_resource_group_name" {
  description = "Specifies the name of the resource group in which the CosmosDB Account resides..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "cosmosdb_sql_database_resource_group_name" {
  description = "The name of the resource group in which the Cosmos DB SQL Database is created..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "cosmosdb_sql_database_account_name" {
  description = "The name of the Cosmos DB SQL Database to create the table within..  If not specified, value of var.account_name will be used..  If not specified, value of var.account_name will be used..  If not specified, value of var.account_name will be used..  If not specified, value of var.account_name will be used."
  type        = string
  default     = null
}
