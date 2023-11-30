# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Share. Changing this forces a new Data Share to be created."
  type        = string

}
variable "account_id" {
  description = "(REQUIRED) The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created."
  type        = string

}
variable "kind" {
  description = "(REQUIRED) The kind of the Data Share. Possible values are 'CopyBased' and 'InPlace'. Changing this forces a new Data Share to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The Data Share's description."
  type        = string
  default     = null
}
variable "snapshot_schedule" {
  description = "A 'snapshot_schedule' block."
  type        = map(any)
  default     = null
}
#
# snapshot_schedule block structure:
#   recurrence (string)              : (REQUIRED) The interval of the synchronization with the source data. Possible values are 'Hour' and 'Day'.
#   start_time (string)              : (REQUIRED) The synchronization with the source data's start time.


variable "terms" {
  description = "The terms of the Data Share."
  type        = string
  default     = null
}
