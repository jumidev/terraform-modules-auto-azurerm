# REQUIRED VARIABLES

variable "cosmosdb_container_id" {
  description = "(REQUIRED) The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string

}
variable "kusto_database_id" {
  description = "(REQUIRED) The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string

}
variable "managed_identity_id" {
  description = "(REQUIRED) The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string

}
variable "table_name" {
  description = "(REQUIRED) The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "mapping_rule_name" {
  description = "The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string
  default     = null
}
variable "retrieval_start_date" {
  description = "If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created."
  type        = string
  default     = null
}
