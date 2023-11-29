# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Web Pubsub hub service. Changing this forces a new resource to be created."
  type        = string

}
variable "web_pubsub_id" {
  description = "(REQUIRED) Specifies the id of the Web Pubsub. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "anonymous_connections_enabled" {
  description = "Is anonymous connections are allowed for this hub? Defaults to 'false'. Possible values are 'true', 'false'."
  type        = bool
  default     = false
}
variable "event_handler" {
  description = "An 'event_handler' block."
  type        = map(any)
  default     = null
}
#
# event_handler block structure:
#   url_template (string)        : (REQUIRED) The Event Handler URL Template. Two predefined parameters '{hub}' and '{event}' are available to use in the template. The value of the EventHandler URL is dynamically calculated when the client request comes in. Example: 'http://example.com/api/{hub}/{event}'.
#   user_event_pattern (string)  : Specifies the matching event names. There are 3 kind of patterns supported: * '*' matches any event name * ',' Combine multiple events with ',' for example 'event1,event2', it matches event 'event1' and 'event2' * The single event name, for example 'event1', it matches 'event1'.
#   system_events (string)       : Specifies the list of system events. Supported values are 'connect', 'connected' and 'disconnected'.
#   auth (block)                 : An 'auth' block.
#
# auth block structure        :
#   managed_identity_id (string): (REQUIRED) Specify the identity ID of the target resource.


variable "event_listener" {
  description = "An 'event_listener' block."
  type        = map(any)
  default     = null
}
#
# event_listener block structure   :
#   system_event_name_filter (string): Specifies the list of system events. Supported values are 'connected' and 'disconnected'.
#   user_event_name_filter (string)  : Specifies the list of matching user event names. '['*']' can be used to match all events.
#   eventhub_namespace_name (string) : (REQUIRED) Specifies the event hub namespace name to receive the events.
#   eventhub_name (string)           : (REQUIRED) Specifies the event hub name to receive the events.


