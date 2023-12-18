# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new resource to be created."
  type        = string

}
variable "batch_group_name" {
  description = "(REQUIRED) The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "release_criteria" {
  description = "(REQUIRED) A 'release_criteria' block, which is used to select the criteria to meet before processing each batch."
  type        = map(any)
}
#
# release_criteria block structure:
#   batch_size (string)             : The batch size in bytes for the Logic App Integration Batch Configuration.
#   message_count (number)          : The message count for the Logic App Integration Batch Configuration.
#   recurrence (block)              : A 'recurrence' block.
#
# recurrence block structure:
#   frequency (string)        : (REQUIRED) The frequency of the schedule. Possible values are 'Day', 'Hour', 'Minute', 'Month', 'NotSpecified', 'Second', 'Week' and 'Year'.
#   interval (number)         : (REQUIRED) The number of 'frequency's between runs.
#   end_time (string)         : The end time of the schedule, formatted as an RFC3339 string.
#   schedule (block)          : A 'schedule' block.
#   start_time (string)       : The start time of the schedule, formatted as an RFC3339 string.
#   time_zone (string)        : The timezone of the start/end time.
#
# schedule block structure:
#   hours (string)          : A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered.
#   minutes (string)        : A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
#   month_days (number)     : A list of days of the month that the job should execute on.
#   monthly (block)         : A 'monthly' block.
#   week_days (string)      : A list of days of the week that the job should execute on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'.
#
# monthly block structure:
#   weekday (string)       : (REQUIRED) The day of the occurrence. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'.
#   week (string)          : (REQUIRED) The occurrence of the week within the month.



# OPTIONAL VARIABLES

variable "metadata" {
  description = "A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration."
  type        = string
  default     = null
}
