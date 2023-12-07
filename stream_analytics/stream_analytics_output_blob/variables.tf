# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Output. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_name" {
  description = "(REQUIRED) The name of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "date_format" {
  description = "(REQUIRED) The date format. Wherever '{date}' appears in 'path_pattern', the value of this property is used as the date format instead."
  type        = string

}
variable "path_pattern" {
  description = "(REQUIRED) The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The name of the Storage Account."
  type        = string

}
variable "storage_container_name" {
  description = "(REQUIRED) The name of the Container within the Storage Account."
  type        = string

}
variable "time_format" {
  description = "(REQUIRED) The time format. Wherever '{time}' appears in 'path_pattern', the value of this property is used as the time format instead."
  type        = string

}
variable "serialization" {
  description = "(REQUIRED) A 'serialization' block."
  type        = map(any)
}
#
# serialization block structure:
#   type (string)                : (REQUIRED) The serialization format used for outgoing data streams. Possible values are 'Avro', 'Csv', 'Json' and 'Parquet'.
#   encoding (string)            : The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'.
#   field_delimiter (string)     : The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'.
#   format (string)              : Specifies the format of the JSON the output will be written in. Possible values are 'Array' and 'LineSeparated'.



# OPTIONAL VARIABLES

variable "authentication_mode" {
  description = "The authentication mode for the Stream Output. Possible values are 'Msi' and 'ConnectionString'. Defaults to 'ConnectionString'."
  type        = string
  default     = "ConnectionString"
}
variable "batch_max_wait_time" {
  description = "The maximum wait time per batch in 'hh:mm:ss' e.g. '00:02:00' for two minutes."
  type        = string
  default     = null
}
variable "batch_min_rows" {
  description = "The minimum number of rows per batch (must be between '0' and '1000000')."
  type        = number
  default     = null
}
variable "storage_account_key" {
  description = "The Access Key which should be used to connect to this Storage Account."
  type        = string
  default     = null
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "storage_container_storage_account_name" {
  description = "The name of the Storage Account where the Container exists..  If not specified, value of var.storage_account_name will be used..  If not specified, value of var.storage_account_name will be used."
  type        = string
  default     = null
}
