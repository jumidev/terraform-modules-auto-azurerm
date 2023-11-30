# REQUIRED VARIABLES

variable "container_registry_id" {
  description = "(REQUIRED) The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Container Connected Registry. Changing this forces a new Container Connected Registry to be created."
  type        = string

}
variable "sync_token_id" {
  description = "(REQUIRED) The ID of the Container Registry Token which is used for synchronizing the Connected Registry. Changing this forces a new Container Connected Registry to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "audit_log_enabled" {
  description = "Should the log auditing be enabled?"
  type        = bool
  default     = null
}
variable "client_token_ids" {
  description = "Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry."
  type        = string
  default     = null
}
variable "log_level" {
  description = "The verbosity of the logs. Possible values are 'None', 'Debug', 'Information', 'Warning' and 'Error'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "mode" {
  description = "The mode of the Connected Registry. Possible values are 'Mirror', 'ReadOnly', 'ReadWrite' and 'Registry'. Changing this forces a new Container Connected Registry to be created. Defaults to 'ReadWrite'."
  type        = string
  default     = "ReadWrite"
}
variable "notification" {
  description = "One or more 'notification' blocks."
  type        = map(map(any))
  default     = null
}
#
# notification block structure:
#   action (string)             : (REQUIRED) The action of the artifact that wants to be subscribed for the Connected Registry. Possible values are 'push', 'delete' and '*' (i.e. any).
#   tag (string)                : The tag of the artifact that wants to be subscribed for the Connected Registry.
#   digest (string)             : The digest of the artifact that wants to be subscribed for the Connected Registry.


variable "parent_registry_id" {
  description = "The ID of the parent registry. This can be either a Container Registry ID or a Connected Registry ID. Changing this forces a new Container Connected Registry to be created."
  type        = string
  default     = null
}
variable "sync_message_ttl" {
  description = "The period of time (in form of ISO8601) for which a message is available to sync before it is expired. Allowed range is from 'P1D' to 'P90D'. Defaults to 'P1D'."
  type        = string
  default     = "P1D"
}
variable "sync_schedule" {
  description = "The cron expression indicating the schedule that the Connected Registry will sync with its parent. Defaults to '* * * * *'."
  type        = string
  default     = "* * * * *"
}
variable "sync_window" {
  description = "The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from 'PT3H' to 'P7D'."
  type        = string
  default     = null
}
