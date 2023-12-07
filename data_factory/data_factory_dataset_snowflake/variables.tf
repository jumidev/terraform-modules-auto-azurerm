# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Dataset Snowflake. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
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

variable "schema_name" {
  description = "The schema name of the Data Factory Dataset Snowflake."
  type        = string
  default     = null
}
variable "table_name" {
  description = "The table name of the Data Factory Dataset Snowflake."
  type        = string
  default     = null
}
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
#   name (string)                : (REQUIRED) The name of the column.
#   type (string)                : Type of the column. Valid values are 'NUMBER', 'DECIMAL', 'NUMERIC', 'INT', 'INTEGER', 'BIGINT', 'SMALLINT', 'FLOAT''FLOAT4', 'FLOAT8', 'DOUBLE', 'DOUBLE PRECISION', 'REAL', 'VARCHAR', 'CHAR', 'CHARACTER', 'STRING', 'TEXT', 'BINARY', 'VARBINARY', 'BOOLEAN', 'DATE', 'DATETIME', 'TIME', 'TIMESTAMP', 'TIMESTAMP_LTZ', 'TIMESTAMP_NTZ', 'TIMESTAMP_TZ', 'VARIANT', 'OBJECT', 'ARRAY', 'GEOGRAPHY'. Please note these values are case sensitive.
#   precision (number)           : The total number of digits allowed.
#   scale (number)               : The number of digits allowed to the right of the decimal point.


variable "description" {
  description = "The description for the Data Factory Dataset Snowflake."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Dataset Snowflake."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Dataset Snowflake."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Dataset Snowflake."
  type        = string
  default     = null
}
