# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Input EventHub. Changing this forces a new resource to be created."
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
variable "eventhub_name" {
  description = "(REQUIRED) The name of the Event Hub."
  type        = string

}
variable "servicebus_namespace" {
  description = "(REQUIRED) The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc."
  type        = string

}
variable "serialization" {
  description = "(REQUIRED) A 'serialization' block."
  type        = map(any)
}
#
# serialization block structure:
#   type (string)                : (REQUIRED) The serialization format used for incoming data streams. Possible values are 'Avro', 'Csv' and 'Json'.
#   encoding (string)            : The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'.
#   field_delimiter (string)     : The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'.



# OPTIONAL VARIABLES

variable "partition_key" {
  description = "The property the input Event Hub has been partitioned by."
  type        = string
  default     = null
}
variable "authentication_mode" {
  description = "The authentication mode for the Stream Output. Possible values are 'Msi' and 'ConnectionString'. Defaults to 'ConnectionString'."
  type        = string
  default     = "ConnectionString"
}
variable "eventhub_consumer_group_name" {
  description = "The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group."
  type        = string
  default     = null
}
variable "shared_access_policy_key" {
  description = "The shared access policy key for the specified shared access policy."
  type        = string
  default     = null
}
variable "shared_access_policy_name" {
  description = "The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc."
  type        = string
  default     = null
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_resource_group_name" {
  description = "The name of the Resource Group where the EventHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_name" {
  description = "The name of the EventHub Namespace where the EventHub exists..  If not specified, value of var.namespace_name will be used..  If not specified, value of var.namespace_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_eventhub_name" {
  description = "Specifies the name of the EventHub..  If not specified, value of var.eventhub_name will be used..  If not specified, value of var.eventhub_name will be used..  If not specified, value of var.eventhub_name will be used..  If not specified, value of var.eventhub_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_resource_group_name" {
  description = "The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
