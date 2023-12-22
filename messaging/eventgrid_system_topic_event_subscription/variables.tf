# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Event Subscription. Changing this forces a new Event Subscription to be created."
  type        = string

}
variable "system_topic" {
  description = "(REQUIRED) The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the System Topic exists. Changing this forces a new Event Subscription to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "expiration_time_utc" {
  description = "Specifies the expiration time of the event subscription (Datetime Format 'RFC 3339')."
  type        = string
  default     = null
}
variable "event_delivery_schema" {
  description = "Specifies the event delivery schema for the event subscription. Possible values include: 'EventGridSchema', 'CloudEventSchemaV1_0', 'CustomInputSchema'. Defaults to 'EventGridSchema'. Changing this forces a new resource to be created."
  type        = string
  default     = "EventGridSchema"
}
variable "azure_function_endpoint" {
  description = "An 'azure_function_endpoint' block."
  type        = map(any)
  default     = null
}
#
# azure_function_endpoint block structure   :
#   function_id (string)                      : (REQUIRED) Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
#   max_events_per_batch (number)             : Maximum number of events per batch.
#   preferred_batch_size_in_kilobytes (string): Preferred batch size in Kilobytes.


variable "eventhub_endpoint_id" {
  description = "Specifies the id where the Event Hub is located."
  type        = string
  default     = null
}
variable "hybrid_connection_endpoint_id" {
  description = "Specifies the id where the Hybrid Connection is located."
  type        = string
  default     = null
}
variable "service_bus_queue_endpoint_id" {
  description = "Specifies the id where the Service Bus Queue is located."
  type        = string
  default     = null
}
variable "service_bus_topic_endpoint_id" {
  description = "Specifies the id where the Service Bus Topic is located."
  type        = string
  default     = null
}
variable "storage_queue_endpoint" {
  description = "A 'storage_queue_endpoint' block."
  type        = map(any)
  default     = null
}
#
# storage_queue_endpoint block structure        :
#   storage_account_id (string)                   : (REQUIRED) Specifies the id of the storage account id where the storage queue is located.
#   queue_name (string)                           : (REQUIRED) Specifies the name of the storage queue where the Event Subscription will receive events.
#   queue_message_time_to_live_in_seconds (number): Storage queue message time to live in seconds.


variable "webhook_endpoint" {
  description = "A 'webhook_endpoint' block."
  type        = map(any)
  default     = null
}
#
# webhook_endpoint block structure          :
#   url (string)                              : (REQUIRED) Specifies the url of the webhook where the Event Subscription will receive events.
#   base_url (string)                         : (Computed) The base url of the webhook where the Event Subscription will receive events.
#   max_events_per_batch (number)             : Maximum number of events per batch.
#   preferred_batch_size_in_kilobytes (string): Preferred batch size in Kilobytes.
#   active_directory_tenant_id (string)       : The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
#   active_directory_app_id_or_uri (string)   : The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.


variable "included_event_types" {
  description = "A list of applicable event types that need to be part of the event subscription."
  type        = list(any)
  default     = []
}
variable "subject_filter" {
  description = "A 'subject_filter' block."
  type        = map(any)
  default     = null
}
#
# subject_filter block structure:
#   subject_begins_with (string)  : A string to filter events for an event subscription based on a resource path prefix.
#   subject_ends_with (string)    : A string to filter events for an event subscription based on a resource path suffix.
#   case_sensitive (string)       : Specifies if 'subject_begins_with' and 'subject_ends_with' case sensitive. This value


variable "advanced_filter" {
  description = "A 'advanced_filter' block."
  type        = map(any)
  default     = null
}
#
# advanced_filter block structure       :
#   bool_equals (string)                  : Compares a value of an event using a single boolean value.
#   number_greater_than (string)          : Compares a value of an event using a single floating point number.
#   number_greater_than_or_equals (string): Compares a value of an event using a single floating point number.
#   number_less_than (string)             : Compares a value of an event using a single floating point number.
#   number_less_than_or_equals (string)   : Compares a value of an event using a single floating point number.
#   number_in (string)                    : Compares a value of an event using multiple floating point numbers.
#   number_not_in (string)                : Compares a value of an event using multiple floating point numbers.
#   number_in_range (string)              : Compares a value of an event using multiple floating point number ranges.
#   number_not_in_range (string)          : Compares a value of an event using multiple floating point number ranges.
#   string_begins_with (string)           : Compares a value of an event using multiple string values.
#   string_not_begins_with (string)       : Compares a value of an event using multiple string values.
#   string_ends_with (string)             : Compares a value of an event using multiple string values.
#   string_not_ends_with (string)         : Compares a value of an event using multiple string values.
#   string_contains (string)              : Compares a value of an event using multiple string values.
#   string_not_contains (string)          : Compares a value of an event using multiple string values.
#   string_in (string)                    : Compares a value of an event using multiple string values.
#   string_not_in (string)                : Compares a value of an event using multiple string values.
#   is_not_null (string)                  : Evaluates if a value of an event isn't NULL or undefined.
#   is_null_or_undefined (string)         : Evaluates if a value of an event is NULL or undefined.
#   key (string)                          : (REQUIRED) Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
#   value (string)                        : (REQUIRED) Specifies a single value to compare to when using a single value operator.
#   values (string)                       : (REQUIRED) Specifies an array of values to compare to when using a multiple values operator.


variable "delivery_identity" {
  description = "A 'delivery_identity' block."
  type        = map(any)
  default     = null
}
#
# delivery_identity block structure:
#   type (string)                    : (REQUIRED) Specifies the type of Managed Service Identity that is used for event delivery. Allowed value is 'SystemAssigned', 'UserAssigned'.
#   user_assigned_identity (string)  : The user identity associated with the resource.


variable "delivery_property" {
  description = "One or more 'delivery_property' blocks."
  type        = map(map(any))
  default     = null
}
#
# delivery_property block structure:
#   header_name (string)             : (REQUIRED) The name of the header to send on to the destination.
#   type (string)                    : (REQUIRED) Either 'Static' or 'Dynamic'.
#   value (string)                   : If the 'type' is 'Static', then provide the value to use.
#   source_field (string)            : If the 'type' is 'Dynamic', then provide the payload field to be used as the value. Valid source fields differ by subscription type.
#   secret (string)                  : Set to 'true' if the 'value' is a secret and should be protected, otherwise 'false'. If 'true' then this value won't be returned from Azure API calls.


variable "dead_letter_identity" {
  description = "A 'dead_letter_identity' block."
  type        = map(any)
  default     = null
}
#
# dead_letter_identity block structure:
#   type (string)                       : (REQUIRED) Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is 'SystemAssigned', 'UserAssigned'.
#   user_assigned_identity (string)     : The user identity associated with the resource.


variable "storage_blob_dead_letter_destination" {
  description = "A 'storage_blob_dead_letter_destination' block."
  type        = map(any)
  default     = null
}
#
# storage_blob_dead_letter_destination block structure:
#   storage_account_id (string)                         : (REQUIRED) Specifies the id of the storage account id where the storage blob is located.
#   storage_blob_container_name (string)                : (REQUIRED) Specifies the name of the Storage blob container that is the destination of the deadletter events.


variable "retry_policy" {
  description = "A 'retry_policy' block."
  type        = map(any)
  default     = null
}
#
# retry_policy block structure  :
#   max_delivery_attempts (number): (REQUIRED) Specifies the maximum number of delivery retry attempts for events.
#   event_time_to_live (string)   : (REQUIRED) Specifies the time to live (in minutes) for events. Supported range is '1' to '1440'. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details.


variable "labels" {
  description = "A list of labels to assign to the event subscription."
  type        = list(any)
  default     = []
}
variable "advanced_filtering_on_arrays_enabled" {
  description = "Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to 'false'."
  type        = bool
  default     = false
}
