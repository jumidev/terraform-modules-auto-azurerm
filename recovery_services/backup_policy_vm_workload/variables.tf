# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the VM Workload Backup Policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) The name of the Recovery Services Vault to use. Changing this forces a new resource to be created."
  type        = string

}
variable "protection_policy" {
  description = "(REQUIRED) One or more 'protection_policy' blocks."
  type        = map(map(any))
}
#
# protection_policy block structure:
#   policy_type (string)             : (REQUIRED) The type of the VM Workload Backup Policy. Possible values are 'Differential', 'Full', 'Incremental' and 'Log'.
#   backup (block)                   : (REQUIRED) A 'backup' block.
#   retention_daily (block)          : A 'retention_daily' block.
#   retention_weekly (block)         : A 'retention_weekly' block.
#   retention_monthly (block)        : A 'retention_monthly' block.
#   retention_yearly (block)         : A 'retention_yearly' block.
#   simple_retention (block)         : A 'simple_retention' block.
#
# retention_weekly block structure:
#   count (string)                  : (REQUIRED) The number of weekly backups to keep. Possible values are between '1' and '5163'.
#   weekdays (string)               : (REQUIRED) The weekday backups to retain. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'.
#
# retention_yearly block structure:
#   count (string)                  : (REQUIRED) The number of yearly backups to keep. Possible values are between '1' and '99'
#   format_type (string)            : (REQUIRED) The retention schedule format type for yearly retention policy. Possible values are 'Daily' and 'Weekly'.
#   months (string)                 : (REQUIRED) The months of the year to retain backups of. Possible values are 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November' and 'December'.
#   monthdays (string)              : The monthday backups to retain. Possible values are between '0' and '28'.
#   weekdays (string)               : The weekday backups to retain. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'.
#   weeks (string)                  : The weeks of the month to retain backups of. Possible values are 'First', 'Second', 'Third', 'Fourth', 'Last'.
#
# retention_daily block structure:
#   count (string)                 : (REQUIRED) The number of daily backups to keep. Possible values are between '7' and '9999'.
#
# simple_retention block structure:
#   count (string)                  : (REQUIRED) The count that is used to count retention duration with duration type 'Days'. Possible values are between '7' and '35'.
#
# backup block structure       :
#   frequency (string)           : The backup frequency for the VM Workload Backup Policy. Possible values are 'Daily' and 'Weekly'.
#   frequency_in_minutes (string): The backup frequency in minutes for the VM Workload Backup Policy. Possible values are '15', '30', '60', '120', '240', '480', '720' and '1440'.
#   time (string)                : The time of day to perform the backup in 24hour format.
#   weekdays (string)            : The days of the week to perform backups on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'. This is used when 'frequency' is 'Weekly'.
#
# retention_monthly block structure:
#   count (int)                      : (REQUIRED) The number of monthly backups to keep. Must be between '1' and '1188'.
#   format_type (string)             : (REQUIRED) The retention schedule format type for monthly retention policy. Possible values are 'Daily' and 'Weekly'.
#   monthdays (string)               : The monthday backups to retain. Possible values are between '0' and '28'.
#   weekdays (string)                : The weekday backups to retain. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'.
#   weeks (string)                   : The weeks of the month to retain backups of. Possible values are 'First', 'Second', 'Third', 'Fourth' and 'Last'.


variable "settings" {
  description = "(REQUIRED) A 'settings' block."
  type        = map(any)
}
#
# settings block structure  :
#   time_zone (string)        : (REQUIRED) The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
#   compression_enabled (bool): The compression setting for the VM Workload Backup Policy. Defaults to 'false'.


variable "workload_type" {
  description = "(REQUIRED) The VM Workload type for the Backup Policy. Possible values are 'SQLDataBase' and 'SAPHanaDatabase'. Changing this forces a new resource to be created."
  type        = string

}
