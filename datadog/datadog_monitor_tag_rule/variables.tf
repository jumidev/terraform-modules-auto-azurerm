# REQUIRED VARIABLES

variable "datadog_monitor_id" {
  description = "(REQUIRED) The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The name of the Tag Rules configuration. The allowed value is 'default'. Defaults to 'default'."
  type        = string
  default     = "default"
}
variable "log" {
  description = "A 'log' block."
  type        = map(any)
  default     = null
}
#
# log block structure            :
#   aad_log_enabled (bool)         : Whether AAD logs should be sent for the Monitor resource?
#   subscription_log_enabled (bool): Whether Azure subscription logs should be sent for the Monitor resource?
#   resource_log_enabled (bool)    : Whether Azure resource logs should be sent for the Monitor resource?
#   filter (block)                 : A 'filter' block.
#
# filter block structure:
#   name (string)         : (REQUIRED) Name of the Tag.
#   value (string)        : (REQUIRED) Value of the Tag.
#   action (string)       : (REQUIRED) Allowed values Include or Exclude.


variable "metric" {
  description = "A 'metric' block."
  type        = map(any)
  default     = null
}
#
# metric block structure:
#   filter (block)        : A 'filter' block.
#
# filter block structure:
#   name (string)         : (REQUIRED) Name of the Tag.
#   value (string)        : (REQUIRED) Value of the Tag.
#   action (string)       : (REQUIRED) Allowed values Include or Exclude.


