# REQUIRED VARIABLES

variable "monitor_id" {
  description = "(REQUIRED) Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "azure_active_directory_log_enabled" {
  description = "Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "activity_log_enabled" {
  description = "Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "log_tag_filter" {
  description = "A 'log_tag_filter' block."
  type        = map(any)
  default     = null
}
#
# log_tag_filter block structure:
#   name (string)                 : (REQUIRED) Specifies the name (also known as the key) of the tag.
#   action (string)               : (REQUIRED) Valid actions for a filtering tag. Possible values are 'Exclude' and 'Include'. Exclusion takes priority over inclusion.
#   value (string)                : (REQUIRED) Specifies the value of the tag.


variable "metric_enabled" {
  description = "Whether metrics should be sent for the Monitor resource. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "metric_tag_filter" {
  description = "A 'metric_tag_filter' block."
  type        = map(any)
  default     = null
}
#
# metric_tag_filter block structure:
#   name (string)                    : (REQUIRED) Specifies the name (also known as the key) of the tag.
#   action (string)                  : (REQUIRED) Valid actions for a filtering tag. Possible values are 'Exclude' and 'Include'. Exclusion takes priority over inclusion.
#   value (string)                   : (REQUIRED) Specifies the value of the tag.


variable "subscription_log_enabled" {
  description = "Whether subscription logs should be sent for the Monitor resource. Defaults to 'false'."
  type        = bool
  default     = false
}
