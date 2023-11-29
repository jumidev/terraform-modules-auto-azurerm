# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Defines that the NetApp Snapshot Policy is enabled or not."
  type        = bool

}

# OPTIONAL VARIABLES

variable "hourly_schedule" {
  description = "Sets an hourly snapshot schedule. A 'hourly_schedule' block."
  type        = map(any)
  default     = null
}
#
# hourly_schedule block structure:
#   snapshots_to_keep (string)     : (REQUIRED) How many hourly snapshots to keep, valid range is from 0 to 255.
#   minute (string)                : (REQUIRED) Minute of the hour that the snapshots will be created, valid range is from 0 to 59.


variable "daily_schedule" {
  description = "Sets a daily snapshot schedule. A 'daily_schedule' block."
  type        = map(any)
  default     = null
}
#
# daily_schedule block structure:
#   snapshots_to_keep (string)    : (REQUIRED) How many hourly snapshots to keep, valid range is from 0 to 255.
#   hour (string)                 : (REQUIRED) Hour of the day that the snapshots will be created, valid range is from 0 to 23.
#   minute (string)               : (REQUIRED) Minute of the hour that the snapshots will be created, valid range is from 0 to 59.


variable "weekly_schedule" {
  description = "Sets a weekly snapshot schedule. A 'weekly_schedule' block."
  type        = map(any)
  default     = null
}
#
# weekly_schedule block structure:
#   snapshots_to_keep (string)     : (REQUIRED) How many hourly snapshots to keep, valid range is from 0 to 255.
#   days_of_week (int)             : (REQUIRED) List of the week days using English names when the snapshots will be created.
#   hour (string)                  : (REQUIRED) Hour of the day that the snapshots will be created, valid range is from 0 to 23.
#   minute (string)                : (REQUIRED) Minute of the hour that the snapshots will be created, valid range is from 0 to 59.


variable "monthly_schedule" {
  description = "Sets a monthly snapshot schedule. A 'monthly_schedule' block."
  type        = map(any)
  default     = null
}
#
# monthly_schedule block structure:
#   snapshots_to_keep (string)      : (REQUIRED) How many hourly snapshots to keep, valid range is from 0 to 255.
#   days_of_month (int)             : (REQUIRED) List of the days of the month when the snapshots will be created, valid range is from 1 to 30.
#   hour (string)                   : (REQUIRED) Hour of the day that the snapshots will be created, valid range is from 0 to 23.
#   minute (string)                 : (REQUIRED) Minute of the hour that the snapshots will be created, valid range is from 0 to 59.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
