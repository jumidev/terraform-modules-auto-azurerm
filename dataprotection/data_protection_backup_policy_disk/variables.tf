# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created."
  type        = string

}
variable "vault_id" {
  description = "(REQUIRED) The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created."
  type        = string

}
variable "backup_repeating_time_intervals" {
  description = "(REQUIRED) Specifies a list of repeating time interval. It should follow 'ISO 8601' repeating time interval . Changing this forces a new Backup Policy Disk to be created."
  type        = string

}
variable "default_retention_duration" {
  description = "(REQUIRED) The duration of default retention rule. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy Disk to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "retention_rule" {
  description = "One or more 'retention_rule' blocks. Changing this forces a new Backup Policy Disk to be created."
  type        = map(map(any))
  default     = null
}
#
# retention_rule block structure:
#   duration (string)             : (REQUIRED) Duration of deletion after given timespan. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy Disk to be created.
#   criteria (block)              : (REQUIRED) A 'criteria' block. Changing this forces a new Backup Policy Disk to be created.
#   priority (string)             : (REQUIRED) Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
#
# criteria block structure  :
#   absolute_criteria (string): Possible values are 'FirstOfDay' and 'FirstOfWeek'. Changing this forces a new Backup Policy Disk to be created.


