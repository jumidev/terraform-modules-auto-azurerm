# REQUIRED VARIABLES

variable "principal_id" {
  description = "(REQUIRED) The principal id. Changing this forces a new Pim Active Role Assignment to be created."
  type        = string

}
variable "role_definition_id" {
  description = "(REQUIRED) The role definition id. Changing this forces a new Pim Active Role Assignment to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The scope. Changing this forces a new Pim Active Role Assignment to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "justification" {
  description = "The justification of the role assignment. Changing this forces a new Pim Active Role Assignment to be created."
  type        = string
  default     = null
}
variable "schedule" {
  description = "A 'schedule' block. Changing this forces a new Pim Active Role Assignment to be created."
  type        = map(any)
  default     = null
}
#
# schedule block structure:
#   expiration (block)      : A 'expiration' block.
#   start_date_time (string): The start date time of the role assignment. Changing this forces a new Pim Active Role Assignment to be created.
#
# expiration block structure:
#   duration_days (number)    : The duration of the role assignment in days. Conflicts with 'schedule.0.expiration.0.duration_hours','schedule.0.expiration.0.end_date_time' Changing this forces a new Pim Active Role Assignment to be created.
#   duration_hours (string)   : The duration of the role assignment in hours. Conflicts with 'schedule.0.expiration.0.duration_days','schedule.0.expiration.0.end_date_time' Changing this forces a new Pim Active Role Assignment to be created.
#   end_date_time (string)    : The end date time of the role assignment. Conflicts with 'schedule.0.expiration.0.duration_days','schedule.0.expiration.0.duration_hours' Changing this forces a new Pim Active Role Assignment to be created.


variable "ticket" {
  description = "A 'ticket' block. Changing this forces a new Pim Active Role Assignment to be created."
  type        = map(any)
  default     = null
}
#
# ticket block structure:
#   number (string)       : The ticket number.
#   system (string)       : The ticket system.


