# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the dev test lab schedule. Valid value for name depends on the 'task_type'. For instance for task_type 'LabVmsStartupTask' the name needs to be 'LabVmAutoStart'. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location where the schedule is created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_name" {
  description = "(REQUIRED) The name of the dev test lab. Changing this forces a new resource to be created."
  type        = string

}
variable "task_type" {
  description = "(REQUIRED) The task type of the schedule. Possible values include 'LabVmsShutdownTask' and 'LabVmAutoStart'."
  type        = string

}
variable "time_zone_id" {
  description = "(REQUIRED) The time zone ID (e.g. Pacific Standard time)."
  type        = string

}
variable "notification_settings" {
  description = "(REQUIRED) The notification setting of a schedule. A 'notification_settings' block."
  type        = map(any)
}
#
# notification_settings block structure:
#   status (string)                      : The status of the notification. Possible values are 'Enabled' and 'Disabled'. Defaults to 'Disabled'
#   time_in_minutes (int)                : Time in minutes before event at which notification will be sent.
#   webhook_url (string)                 : The webhook URL to which the notification will be sent.



# OPTIONAL VARIABLES

variable "status" {
  description = "The status of this schedule. Possible values are 'Enabled' and 'Disabled'. Defaults to 'Disabled'."
  type        = string
  default     = "Disabled"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "weekly_recurrence" {
  description = "The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A 'weekly_recurrence' block."
  type        = map(any)
  default     = null
}
#
# weekly_recurrence block structure:
#   time (string)                    : (REQUIRED) The time when the schedule takes effect.
#   week_days (string)               : A list of days that this schedule takes effect . Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'.


variable "daily_recurrence" {
  description = "The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A 'daily_recurrence' block."
  type        = map(any)
  default     = null
}
#
# daily_recurrence block structure:
#   time (string)                   : (REQUIRED) The time each day when the schedule takes effect.


variable "hourly_recurrence" {
  description = "The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A 'hourly_recurrence' block."
  type        = map(any)
  default     = null
}
#
# hourly_recurrence block structure:
#   minute (string)                  : (REQUIRED) Minutes of the hour the schedule will run.


