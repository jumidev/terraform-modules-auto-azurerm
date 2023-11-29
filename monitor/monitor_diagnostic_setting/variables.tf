# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "eventhub_name" {
  description = "Specifies the name of the Event Hub where Diagnostics Data should be sent."
  type        = string
  default     = null
}
variable "eventhub_authorization_rule_id" {
  description = "Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data."
  type        = string
  default     = null
}
variable "log" {
  description = "One or more 'log' blocks."
  type        = map(map(any))
  default     = null
}
#
# log block structure     :
#   category (string)       : The name of a Diagnostic Log Category for this Resource.
#   category_group (string) : The name of a Diagnostic Log Category Group for this Resource.
#   retention_policy (block): A 'retention_policy' block.
#   enabled (bool)          : Is this Diagnostic Log enabled? Defaults to 'true'.
#
# retention_policy block structure:
#   enabled (bool)                  : (REQUIRED) Is this Retention Policy enabled?
#   days (int)                      : The number of days for which this Retention Policy should apply.


variable "enabled_log" {
  description = "One or more 'enabled_log' blocks."
  type        = map(map(any))
  default     = null
}
#
# enabled_log block structure:
#   category (string)          : The name of a Diagnostic Log Category for this Resource.
#   category_group (string)    : The name of a Diagnostic Log Category Group for this Resource.
#   retention_policy (block)   : A 'retention_policy' block.
#
# retention_policy block structure:
#   enabled (bool)                  : (REQUIRED) Is this Retention Policy enabled?
#   days (int)                      : The number of days for which this Retention Policy should apply.


variable "log_analytics_workspace_id" {
  description = "Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent."
  type        = string
  default     = null
}
variable "metric" {
  description = "One or more 'metric' blocks."
  type        = map(map(any))
  default     = null
}
#
# metric block structure  :
#   category (string)       : (REQUIRED) The name of a Diagnostic Metric Category for this Resource.
#   retention_policy (block): A 'retention_policy' block.
#   enabled (bool)          : Is this Diagnostic Metric enabled? Defaults to 'true'.
#
# retention_policy block structure:
#   enabled (bool)                  : (REQUIRED) Is this Retention Policy enabled?
#   days (int)                      : The number of days for which this Retention Policy should apply.


variable "storage_account_id" {
  description = "The ID of the Storage Account where logs should be sent."
  type        = string
  default     = null
}
variable "log_analytics_destination_type" {
  description = "Possible values are 'AzureDiagnostics' and 'Dedicated'. When set to 'Dedicated', logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy 'AzureDiagnostics' table."
  type        = string
  default     = null
}
variable "partner_solution_id" {
  description = "The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview)."
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
