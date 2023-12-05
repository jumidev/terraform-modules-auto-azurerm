# REQUIRED VARIABLES

variable "logz_sub_account_id" {
  description = "(REQUIRED) The ID of the Logz Sub Account. Changing this forces a new Logz Sub Account Tag Rule to be created."
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
#   name (string)             : (REQUIRED) The name of the tag to match.
#   action (string)           : (REQUIRED) The action is used to limit logs collection to include or exclude Azure resources with specific tags. Possible values are 'Include' and 'Exclude'. Note that the 'Exclude' takes priority over the 'Include'.
#   value (string)            : The value of the tag to match.


variable "send_aad_logs" {
  description = "Whether AAD logs should be sent to the Monitor resource?"
  type        = string
  default     = null
}
variable "send_activity_logs" {
  description = "Whether activity logs from this Logz Sub Account Tag Rule should be sent to the Monitor resource?"
  type        = string
  default     = null
}
variable "send_subscription_logs" {
  description = "Whether subscription logs should be sent to the Monitor resource?"
  type        = string
  default     = null
}
