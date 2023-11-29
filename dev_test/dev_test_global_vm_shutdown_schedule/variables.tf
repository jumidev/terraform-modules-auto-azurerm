# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The location where the schedule is created. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_machine_id" {
  description = "(REQUIRED) The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created."
  type        = string

}
variable "timezone" {
  description = "(REQUIRED) The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/)."
  type        = string

}
variable "daily_recurrence_time" {
  description = "(REQUIRED) The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)"
  type        = string

}
variable "notification_settings" {
  description = "(REQUIRED) The notification setting of a schedule. A 'notification_settings' block."
  type        = map(any)
}
#
# notification_settings block structure:
#   enabled (string)                     : (REQUIRED) Whether to enable pre-shutdown notifications. Possible values are 'true' and 'false'.
#   email (string)                       : E-mail address to which the notification will be sent.
#   time_in_minutes (int)                : Time in minutes between 15 and 120 before a shutdown event at which a notification will be sent. Defaults to '30'.
#   webhook_url (string)                 : The webhook URL to which the notification will be sent.



# OPTIONAL VARIABLES

variable "enabled" {
  description = "Whether to enable the schedule. Possible values are 'true' and 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
