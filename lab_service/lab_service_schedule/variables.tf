# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Lab Service Schedule. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_id" {
  description = "(REQUIRED) The resource ID of the Lab Service Schedule. Changing this forces a new resource to be created."
  type        = string

}
variable "stop_time" {
  description = "(REQUIRED) When Lab User Virtual Machines will be stopped in RFC-3339 format."
  type        = string

}
variable "time_zone" {
  description = "(REQUIRED) The IANA Time Zone ID for the Schedule."
  type        = string

}

# OPTIONAL VARIABLES

variable "notes" {
  description = "The notes for the Schedule."
  type        = string
  default     = null
}
variable "recurrence" {
  description = "A 'recurrence' block."
  type        = map(any)
  default     = null
}
#
# recurrence block structure:
#   expiration_date (string)  : (REQUIRED) When the recurrence will expire in RFC-3339 format.
#   frequency (string)        : (REQUIRED) The frequency of the recurrence. Possible values are 'Daily' and 'Weekly'.
#   interval (string)         : The interval to invoke the schedule on. Possible values are between '1' and '365'.
#   week_days (string)        : The interval to invoke the schedule on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'.


variable "start_time" {
  description = "When Lab User Virtual Machines will be started in RFC-3339 format."
  type        = string
  default     = null
}
