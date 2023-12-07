# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the ServiceBus Topic resource. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_id" {
  description = "(REQUIRED) The ID of the ServiceBus Namespace to create Changing this forces a new resource to be created. this topic in. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "status" {
  description = "The Status of the Service Bus Topic. Acceptable values are 'Active' or 'Disabled'. Defaults to 'Active'."
  type        = string
  default     = "Active"
}
variable "auto_delete_on_idle" {
  description = "The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes."
  type        = string
  default     = null
}
variable "default_message_ttl" {
  description = "The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself."
  type        = string
  default     = null
}
variable "duplicate_detection_history_time_window" {
  description = "The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes. ('PT10M')"
  type        = string
  default     = "PT10M"
}
variable "enable_batched_operations" {
  description = "Boolean flag which controls if server-side batched operations are enabled."
  type        = bool
  default     = null
}
variable "enable_express" {
  description = "Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage."
  type        = bool
  default     = null
}
variable "enable_partitioning" {
  description = "Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "max_message_size_in_kilobytes" {
  description = "Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the 'Large messages support' section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview)."
  type        = number
  default     = null
}
variable "max_size_in_megabytes" {
  description = "Integer value which controls the size of memory allocated for the topic. For supported values see the 'Queue/topic size' section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas)."
  type        = number
  default     = null
}
variable "requires_duplicate_detection" {
  description = "Boolean flag which controls whether Changing this forces a new resource to be created. the Topic requires duplicate detection. Defaults to false. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "support_ordering" {
  description = "Boolean flag which controls whether the Topic supports ordering."
  type        = bool
  default     = null
}
