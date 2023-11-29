# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "logic_app_id" {
  description = "(REQUIRED) Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "frequency" {
  description = "(REQUIRED) Specifies the Frequency at which this Trigger should be run. Possible values include 'Month', 'Week', 'Day', 'Hour', 'Minute' and 'Second'."
  type        = string

}
variable "interval" {
  description = "(REQUIRED) Specifies interval used for the Frequency, for example a value of '4' for 'interval' and 'hour' for 'frequency' would run the Trigger every 4 hours."
  type        = string

}

# OPTIONAL VARIABLES

variable "start_time" {
  description = "Specifies the start date and time for this trigger in RFC3339 format: '2000-01-02T03:04:05Z'."
  type        = string
  default     = null
}
variable "time_zone" {
  description = "Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values)"
  type        = string
  default     = null
}
variable "schedule" {
  description = "A 'schedule' block as specified below."
  type        = map(any)
  default     = null
}
#
# schedule block structure :
#   at_these_minutes (string): Specifies a list of minutes when the trigger should run. Valid values are between 0 and 59.
#   at_these_hours (string)  : Specifies a list of hours when the trigger should run. Valid values are between 0 and 23.
#   on_these_days (string)   : Specifies a list of days when the trigger should run. Valid values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'.


