# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_id" {
  description = "(REQUIRED) The ID of the vault that should be updated. Changing this forces a new resource to be created."
  type        = string

}
variable "source_recovery_fabric_id" {
  description = "(REQUIRED) ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created."
  type        = string

}
variable "target_recovery_fabric_id" {
  description = "(REQUIRED) ID of target fabric to recover. Changing this forces a new Replication Plan to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "recovery_group" {
  description = "Three or more 'recovery_group' block defined as below."
  type        = string
  default     = null
}
variable "shutdown_recovery_group" {
  description = "One 'shutdown_recovery_group' block."
  type        = map(any)
  default     = null
}
#
# shutdown_recovery_group block structure:
#   pre_action (block)                     : one or more 'action' block. which will be executed before the group recovery.
#   post_action (block)                    : one or more 'action' block. which will be executed after the group recovery.
#
# action block structure            :
#   name (string)                     : (REQUIRED) Name of the Action.
#   type (string)                     : (REQUIRED) Type of the action detail. Possible values are 'AutomationRunbookActionDetails', 'ManualActionDetails' and 'ScriptActionDetails'.
#   fail_over_directions (string)     : (REQUIRED) Directions of fail over. Possible values are 'PrimaryToRecovery' and 'RecoveryToPrimary'
#   fail_over_types (string)          : (REQUIRED) Types of fail over. Possible values are 'TestFailover', 'PlannedFailover' and 'UnplannedFailover'
#   fabric_location (string)          : The fabric location of runbook or script. Possible values are 'Primary' and 'Recovery'. It must not be specified when 'type' is 'ManualActionDetails'.
#   runbook_id (string)               : Id of runbook.
#   manual_action_instruction (string): Instructions of manual action.
#   script_path (string)              : Path of action script.


variable "failover_recovery_group" {
  description = "One 'failover_recovery_group' block."
  type        = map(any)
  default     = null
}
#
# failover_recovery_group block structure:
#   pre_action (block)                     : one or more 'action' block. which will be executed before the group recovery.
#   post_action (block)                    : one or more 'action' block. which will be executed after the group recovery.
#
# action block structure            :
#   name (string)                     : (REQUIRED) Name of the Action.
#   type (string)                     : (REQUIRED) Type of the action detail. Possible values are 'AutomationRunbookActionDetails', 'ManualActionDetails' and 'ScriptActionDetails'.
#   fail_over_directions (string)     : (REQUIRED) Directions of fail over. Possible values are 'PrimaryToRecovery' and 'RecoveryToPrimary'
#   fail_over_types (string)          : (REQUIRED) Types of fail over. Possible values are 'TestFailover', 'PlannedFailover' and 'UnplannedFailover'
#   fabric_location (string)          : The fabric location of runbook or script. Possible values are 'Primary' and 'Recovery'. It must not be specified when 'type' is 'ManualActionDetails'.
#   runbook_id (string)               : Id of runbook.
#   manual_action_instruction (string): Instructions of manual action.
#   script_path (string)              : Path of action script.


variable "boot_recovery_group" {
  description = "One or more 'boot_recovery_group' blocks."
  type        = map(map(any))
  default     = null
}
#
# boot_recovery_group block structure:
#   replicated_protected_items (list)  : One or more protected VM IDs. It must not be specified when 'type' is 'Shutdown'.
#   pre_action (block)                 : one or more 'action' block. which will be executed before the group recovery.
#   post_action (block)                : one or more 'action' block. which will be executed after the group recovery.
#
# action block structure            :
#   name (string)                     : (REQUIRED) Name of the Action.
#   type (string)                     : (REQUIRED) Type of the action detail. Possible values are 'AutomationRunbookActionDetails', 'ManualActionDetails' and 'ScriptActionDetails'.
#   fail_over_directions (string)     : (REQUIRED) Directions of fail over. Possible values are 'PrimaryToRecovery' and 'RecoveryToPrimary'
#   fail_over_types (string)          : (REQUIRED) Types of fail over. Possible values are 'TestFailover', 'PlannedFailover' and 'UnplannedFailover'
#   fabric_location (string)          : The fabric location of runbook or script. Possible values are 'Primary' and 'Recovery'. It must not be specified when 'type' is 'ManualActionDetails'.
#   runbook_id (string)               : Id of runbook.
#   manual_action_instruction (string): Instructions of manual action.
#   script_path (string)              : Path of action script.


variable "azure_to_azure_settings" {
  description = "An 'azure_to_azure_settings' block."
  type        = map(any)
  default     = null
}
#
# azure_to_azure_settings block structure:
#   primary_zone (string)                  : The Availability Zone in which the VM is located. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
#   recovery_zone (string)                 : The Availability Zone in which the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
#   primary_edge_zone (string)             : The Edge Zone within the Azure Region where the VM exists. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
#   recovery_edge_zone (string)            : The Edge Zone within the Azure Region where the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.


