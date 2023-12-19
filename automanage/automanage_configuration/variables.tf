# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "antimalware" {
  description = "A 'antimalware' block."
  type        = map(any)
  default     = null
}
#
# antimalware block structure            :
#   exclusions (block)                     : A 'exclusions' block.
#   real_time_protection_enabled (bool)    : Whether the real time protection is enabled. Defaults to 'false'.
#   scheduled_scan_enabled (bool)          : Whether the scheduled scan is enabled. Defaults to 'false'.
#   scheduled_scan_type (string)           : The type of the scheduled scan. Possible values are 'Quick' and 'Full'. Defaults to 'Quick'.
#   scheduled_scan_day (string)            : The day of the scheduled scan. Possible values are '0' to '8' where '0' is daily, '1' to '7' are the days of the week and '8' is Disabled. Defaults to '8'.
#   scheduled_scan_time_in_minutes (string): The time of the scheduled scan in minutes. Possible values are '0' to '1439' where '0' is 12:00 AM and '1439' is 11:59 PM.
#
# exclusions block structure:
#   extensions (string)       : The extensions to exclude from the antimalware scan, separated by ';'. For example '.ext1;.ext2'.
#   paths (string)            : The paths to exclude from the antimalware scan, separated by ';'. For example 'C:''Windows''Temp;D:''Temp'.
#   processes (string)        : The processes to exclude from the antimalware scan, separated by ';'. For example 'svchost.exe;notepad.exe'.


variable "azure_security_baseline" {
  description = "A 'azure_security_baseline' block."
  type        = map(any)
  default     = null
}
#
# azure_security_baseline block structure:
#   assignment_type (string)               : The assignment type of the azure security baseline. Possible values are 'ApplyAndAutoCorrect', 'ApplyAndMonitor', 'Audit' and 'DeployAndAutoCorrect'. Defaults to 'ApplyAndAutoCorrect'.


variable "backup" {
  description = "A 'backup' block."
  type        = map(any)
  default     = null
}
#
# backup block structure                     :
#   policy_name (string)                       : The name of the backup policy.
#   time_zone (string)                         : The timezone of the backup policy. Defaults to 'UTC'.
#   instant_rp_retention_range_in_days (number): The retention range in days of the backup policy. Defaults to '5'.
#   schedule_policy (block)                    : A 'schedule_policy' block.
#   retention_policy (block)                   : A 'retention_policy' block.
#
# retention_duration block structure:
#   count (number)                    : The count of the retention duration of the backup policy. Valid value inside 'daily_schedule' is '7' to '9999' and inside 'weekly_schedule' is '1' to '5163'.
#   duration_type (string)            : The duration type of the retention duration of the backup policy. Valid value inside 'daily_schedule' is 'Days' and inside 'weekly_schedule' is 'Weeks'. Defaults to 'Days'.
#
# retention_policy block structure:
#   retention_policy_type (string)  : The retention policy type of the backup policy. Possible value is 'LongTermRetentionPolicy'. Defaults to 'LongTermRetentionPolicy'.
#   daily_schedule (block)          : A 'daily_schedule' block.
#   weekly_schedule (block)         : A 'weekly_schedule' block.
#
# weekly_schedule block structure:
#   retention_times (string)       : The retention times of the backup policy.
#   retention_duration (block)     : A 'retention_duration' block.
#
# daily_schedule block structure:
#   retention_times (string)      : The retention times of the backup policy.
#   retention_duration (block)    : A 'retention_duration' block.
#
# schedule_policy block structure:
#   schedule_run_frequency (string): The schedule run frequency of the backup policy. Possible values are 'Daily' and 'Weekly'. Defaults to 'Daily'.
#   schedule_run_times (string)    : The schedule run times of the backup policy.
#   schedule_run_days (string)     : The schedule run days of the backup policy. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'.
#   schedule_policy_type (string)  : The schedule policy type of the backup policy. Possible value is 'SimpleSchedulePolicy'. Defaults to 'SimpleSchedulePolicy'.


variable "automation_account_enabled" {
  description = "Whether the automation account is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "boot_diagnostics_enabled" {
  description = "Whether the boot diagnostics are enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "defender_for_cloud_enabled" {
  description = "Whether the defender for cloud is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "guest_configuration_enabled" {
  description = "Whether the guest configuration is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "log_analytics_enabled" {
  description = "Whether log analytics are enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "status_change_alert_enabled" {
  description = "Whether the status change alert is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
