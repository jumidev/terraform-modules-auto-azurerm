# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description for the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "integration_runtime_name" {
  description = "The integration runtime reference to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "account_endpoint" {
  description = "The endpoint of the Azure CosmosDB account. Required if 'connection_string' is unspecified."
  type        = string
  default     = null
}
variable "account_key" {
  description = "The account key of the Azure Cosmos DB account. Required if 'connection_string' is unspecified."
  type        = string
  default     = null
}
variable "database" {
  description = "The name of the database. Required if 'connection_string' is unspecified."
  type        = string
  default     = null
}
variable "connection_string" {
  description = "The connection string. Required if 'account_endpoint', 'account_key', and 'database' are unspecified."
  type        = string
  default     = null
}
