# REQUIRED VARIABLES

variable "principal_id" {
  description = "(REQUIRED) Object ID of the principal for this role assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "role_definition_id" {
  description = "(REQUIRED) The role definition ID for this role assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "justification" {
  description = "The justification for the role assignment. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "schedule" {
  description = "A 'schedule' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# schedule block structure:
#   expiration (block)      : An 'expiration' block.
#   start_date_time (string): The start date/time of the role assignment. Changing this forces a new resource to be created.
#
# expiration block structure:
#   duration_days (number)    : The duration of the role assignment in days. Changing this forces a new resource to be created.
#   duration_hours (string)   : The duration of the role assignment in hours. Changing this forces a new resource to be created.
#   end_date_time (string)    : The end date/time of the role assignment. Changing this forces a new resource to be created. ~> Note: Only one of 'duration_days', 'duration_hours' or 'end_date_time' should be specified.


variable "ticket" {
  description = "A 'ticket' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# ticket block structure:
#   number (string)       : User-supplied ticket number to be included with the request. Changing this forces a new resource to be created.
#   system (string)       : User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created.


