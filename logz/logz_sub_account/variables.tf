# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this logz Sub Account. Possible values must be between 1 and 32 characters in length and may contain only letters, numbers, hyphens and underscores. Changing this forces a new logz Sub Account to be created."
  type        = string

}
variable "logz_monitor_id" {
  description = "(REQUIRED) The ID of the Logz Monitor. Changing this forces a new logz Sub Account to be created."
  type        = string

}
variable "user" {
  description = "(REQUIRED) A 'user' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# user block structure :
#   email (string)       : (REQUIRED) Email of the user used by Logz for contacting them if needed. A valid email address consists of an email prefix and an email domain. The prefix and domain may contain only letters, numbers, underscores, periods and dashes. Changing this forces a new logz Sub Account to be created.
#   first_name (string)  : (REQUIRED) First Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
#   last_name (string)   : (REQUIRED) Last Name of the user. Possible values must be between 1 and 50 characters in length. Changing this forces a new logz Sub Account to be created.
#   phone_number (string): (REQUIRED) Phone number of the user used by Logz for contacting them if needed. Possible values must be between 1 and 40 characters in length. Changing this forces a new logz Sub Account to be created.



# OPTIONAL VARIABLES

variable "enabled" {
  description = "Whether the resource monitoring is enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the logz Sub Account."
  type        = map(any)
  default     = null
}
