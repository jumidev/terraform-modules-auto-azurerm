# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "linked_service_name" {
  description = "(REQUIRED) The Data Factory Linked Service name in which to associate the Dataset with."
  type        = string

}

# OPTIONAL VARIABLES

variable "folder" {
  description = "The folder that this Dataset is in. If not specified, the Dataset will appear at the root level."
  type        = string
  default     = null
}
variable "schema_column" {
  description = "A 'schema_column' block."
  type        = map(any)
  default     = null
}
#
# schema_column block structure:
#   type (string)                : Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive.
#   description (string)         : The description of the column.


variable "description" {
  description = "The description for the Data Factory Dataset."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Dataset."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Dataset."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Dataset."
  type        = string
  default     = null
}
variable "collection_name" {
  description = "The collection name of the Data Factory Dataset Azure Cosmos DB SQL API."
  type        = string
  default     = null
}
