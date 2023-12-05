# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created."
  type        = string

}
variable "vault_name" {
  description = "(REQUIRED) The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created."
  type        = string

}
variable "backup_repeating_time_intervals" {
  description = "(REQUIRED) Specifies a list of repeating time interval. It supports weekly back. It should follow 'ISO 8601' repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created."
  type        = string

}
variable "default_retention_duration" {
  description = "(REQUIRED) The duration of default retention rule. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy PostgreSQL to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "retention_rule" {
  description = "One or more 'retention_rule' blocks. Changing this forces a new Backup Policy PostgreSQL to be created."
  type        = map(map(any))
  default     = null
}
#
# retention_rule block structure:
#   name (string)                 : (REQUIRED) The name which should be used for this retention rule. Changing this forces a new Backup Policy PostgreSQL to be created.
#   duration (string)             : (REQUIRED) Duration after which the backup is deleted. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
#   criteria (block)              : (REQUIRED) A 'criteria' block. Changing this forces a new Backup Policy PostgreSQL to be created.
#   priority (string)             : (REQUIRED) Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy PostgreSQL to be created.
#
# criteria block structure       :
#   absolute_criteria (string)     : Possible values are 'AllBackup', 'FirstOfDay', 'FirstOfWeek', 'FirstOfMonth' and 'FirstOfYear'. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy PostgreSQL to be created.
#   days_of_week (string)          : Possible values are 'Monday', 'Tuesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. Changing this forces a new Backup Policy PostgreSQL to be created.
#   months_of_year (string)        : Possible values are 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November' and 'December'. Changing this forces a new Backup Policy PostgreSQL to be created.
#   scheduled_backup_times (string): Specifies a list of backup times for backup in the 'RFC3339' format. Changing this forces a new Backup Policy PostgreSQL to be created.
#   weeks_of_month (string)        : Possible values are 'First', 'Second', 'Third', 'Fourth' and 'Last'. Changing this forces a new Backup Policy PostgreSQL to be created.


