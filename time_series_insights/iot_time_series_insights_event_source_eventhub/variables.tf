# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure IoT Time Series Insights EventHub Event Source. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "environment_id" {
  description = "(REQUIRED) Specifies the id of the IoT Time Series Insights Environment that the Event Source should be associated with. Changing this forces a new resource to created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_name" {
  description = "(REQUIRED) Specifies the name of the EventHub which will be associated with this resource."
  type        = string

}
variable "consumer_group_name" {
  description = "(REQUIRED) Specifies the name of the EventHub Consumer Group that holds the partitions from which events will be read."
  type        = string

}
variable "event_source_resource_id" {
  description = "(REQUIRED) Specifies the resource id where events will be coming from."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) Specifies the EventHub Namespace name."
  type        = string

}
variable "shared_access_key_name" {
  description = "(REQUIRED) Specifies the name of the Shared Access key that grants the Event Source access to the EventHub."
  type        = string

}
variable "shared_access_key" {
  description = "(REQUIRED) Specifies the value of the Shared Access Policy key that grants the Time Series Insights service read access to the EventHub."
  type        = string

}

# OPTIONAL VARIABLES

variable "timestamp_property_name" {
  description = "Specifies the value that will be used as the event source's timestamp. This value defaults to the event creation time."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "eventhub_resource_group_name" {
  description = "The name of the Resource Group where the EventHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_name" {
  description = "The name of the EventHub Namespace where the EventHub exists..  If not specified, value of var.namespace_name will be used..  If not specified, value of var.namespace_name will be used..  If not specified, value of var.namespace_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
