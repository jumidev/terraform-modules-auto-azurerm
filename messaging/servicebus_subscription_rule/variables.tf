# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "subscription_id" {
  description = "(REQUIRED) The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "filter_type" {
  description = "(REQUIRED) Type of filter to be applied to a BrokeredMessage. Possible values are 'SqlFilter' and 'CorrelationFilter'."
  type        = string

}

# OPTIONAL VARIABLES

variable "sql_filter" {
  description = "Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when 'filter_type' is set to 'SqlFilter'."
  type        = string
  default     = null
}
variable "correlation_filter" {
  description = "A 'correlation_filter' block to be evaluated against a BrokeredMessage. Required when 'filter_type' is set to 'CorrelationFilter'."
  type        = map(any)
  default     = null
}
#
# correlation_filter block structure:
#   content_type (string)             : Content type of the message.
#   correlation_id (string)           : Identifier of the correlation.
#   label (string)                    : Application specific label.
#   message_id (string)               : Identifier of the message.
#   reply_to (string)                 : Address of the queue to reply to.
#   reply_to_session_id (string)      : Session identifier to reply to.
#   session_id (string)               : Session identifier.
#   properties (list)                 : A list of user defined properties to be included in the filter. Specified as a map of name/value pairs.


variable "action" {
  description = "Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage."
  type        = string
  default     = null
}
