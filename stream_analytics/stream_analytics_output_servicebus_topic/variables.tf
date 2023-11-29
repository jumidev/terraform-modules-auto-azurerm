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
variable "topic_name" {
  description = "(REQUIRED) The name of the Service Bus Topic."
  type        = string

}
variable "servicebus_namespace" {
  description = "(REQUIRED) The namespace that is associated with the desired Event Hub, Service Bus Topic, Service Bus Topic, etc."
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

variable "shared_access_policy_key" {
  description = "The shared access policy key for the specified shared access policy. Required if 'authentication_mode' is 'ConnectionString'."
  type        = string
  default     = null
}
variable "shared_access_policy_name" {
  description = "The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if 'authentication_mode' is 'ConnectionString'."
  type        = string
  default     = null
}
variable "property_columns" {
  description = "A list of property columns to add to the Service Bus Topic output."
  type        = list(any)
  default     = []
}
variable "authentication_mode" {
  description = "The authentication mode for the Stream Output. Possible values are 'Msi' and 'ConnectionString'. Defaults to 'ConnectionString'."
  type        = string
  default     = "ConnectionString"
}
variable "system_property_columns" {
  description = "A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Topic Output."
  type        = string
  default     = null
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
