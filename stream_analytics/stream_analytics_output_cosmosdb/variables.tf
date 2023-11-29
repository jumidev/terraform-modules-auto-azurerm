# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Analytics Output. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_id" {
  description = "(REQUIRED) The ID of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "cosmosdb_account_key" {
  description = "(REQUIRED) The account key for the CosmosDB database."
  type        = string

}
variable "cosmosdb_sql_database_id" {
  description = "(REQUIRED) The ID of the CosmosDB database."
  type        = string

}
variable "container_name" {
  description = "(REQUIRED) The name of the CosmosDB container."
  type        = string

}

# OPTIONAL VARIABLES

variable "document_id" {
  description = "The name of the field in output events used to specify the primary key which insert or update operations are based on."
  type        = string
  default     = null
}
variable "partition_key" {
  description = "The name of the field in output events used to specify the key for partitioning output across collections. If 'container_name' contains '{partition}' token, this property is required to be specified."
  type        = string
  default     = null
}
