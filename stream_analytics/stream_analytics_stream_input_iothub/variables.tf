# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Input IoTHub. Changing this forces a new resource to be created."
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
variable "eventhub_consumer_group_name" {
  description = "(REQUIRED) The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub."
  type        = string

}
variable "endpoint" {
  description = "(REQUIRED) The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.)."
  type        = string

}
variable "iothub_namespace" {
  description = "(REQUIRED) The name or the URI of the IoT Hub."
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


variable "shared_access_policy_key" {
  description = "(REQUIRED) The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created."
  type        = string

}
variable "shared_access_policy_name" {
  description = "(REQUIRED) The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc."
  type        = string

}

# OPTIONAL VARIABLES

variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_eventhub_name" {
  description = "Specifies the name of the EventHub..  If not specified, value of var.eventhub_name will be used..  If not specified, value of var.eventhub_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_resource_group_name" {
  description = "The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
