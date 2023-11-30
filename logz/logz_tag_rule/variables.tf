# REQUIRED VARIABLES

variable "logz_monitor_id" {
  description = "(REQUIRED) The ID of the Logz Monitor. Changing this forces a new logz Tag Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tag_filter" {
  description = "One or more (up to 10) 'tag_filter' blocks."
  type        = map(map(any))
  default     = null
}
#
# tag_filter block structure:
#   action (string)           : (REQUIRED) The action for a filtering tag. Possible values are 'Include' and 'Exclude' is allowed. Note that the 'Exclude' takes priority over the 'Include'.
#   value (string)            : The value of this 'tag_filter'.


variable "send_aad_logs" {
  description = "Whether AAD logs should be sent to the Monitor resource?"
  type        = string
  default     = null
}
variable "send_activity_logs" {
  description = "Whether activity logs from Azure resources should be sent to the Monitor resource?"
  type        = string
  default     = null
}
variable "send_subscription_logs" {
  description = "Whether subscription logs should be sent to the Monitor resource?"
  type        = string
  default     = null
}
