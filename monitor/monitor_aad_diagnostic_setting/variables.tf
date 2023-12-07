# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Monitor Azure Active Directory Diagnostic Setting. Changing this forces a new Monitor Azure Active Directory Diagnostic Setting to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "log" {
  description = "One or more 'log' blocks."
  type        = map(map(any))
  default     = null
}
#
# log block structure     :
#   category (string)       : (REQUIRED) The log category for the Azure Active Directory Diagnostic.
#   retention_policy (block): (REQUIRED) A 'retention_policy' block.
#   enabled (bool)          : Is this Diagnostic Log enabled? Defaults to 'true'.
#
# retention_policy block structure:
#   enabled (bool)                  : Is this Retention Policy enabled? Defaults to 'false'.
#   days (number)                   : The number of days for which this Retention Policy should apply. Defaults to '0'.


variable "enabled_log" {
  description = "One or more 'enabled_log' blocks."
  type        = map(map(any))
  default     = null
}
#
# enabled_log block structure:
#   category (string)          : (REQUIRED) The log category for the Azure Active Directory Diagnostic.
#   retention_policy (block)   : (REQUIRED) A 'retention_policy' block.
#
# retention_policy block structure:
#   enabled (bool)                  : Is this Retention Policy enabled? Defaults to 'false'.
#   days (number)                   : The number of days for which this Retention Policy should apply. Defaults to '0'.


variable "eventhub_authorization_rule_id" {
  description = "Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "eventhub_name" {
  description = "Specifies the name of the Event Hub where Diagnostics Data should be sent. If not specified, the default Event Hub will be used. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "log_analytics_workspace_id" {
  description = "Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent."
  type        = string
  default     = null
}
variable "storage_account_id" {
  description = "The ID of the Storage Account where logs should be sent. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "eventhub_resource_group_name" {
  description = "The name of the Resource Group where the EventHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "eventhub_namespace_name" {
  description = "The name of the EventHub Namespace where the EventHub exists..  If not specified, value of var.namespace_name will be used..  If not specified, value of var.namespace_name will be used."
  type        = string
  default     = null
}
