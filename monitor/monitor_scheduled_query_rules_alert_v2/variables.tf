# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "criteria" {
  description = "(REQUIRED) A 'criteria' block."
  type        = map(any)
}
#
# criteria block structure        :
#   operator (string)               : (REQUIRED) Specifies the criteria operator. Possible values are 'Equal', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan',and 'LessThanOrEqual'.
#   query (string)                  : (REQUIRED) The query to run on logs. The results returned by this query are used to populate the alert.
#   threshold (string)              : (REQUIRED) Specifies the criteria threshold value that activates the alert.
#   time_aggregation_method (string): (REQUIRED) The type of aggregation to apply to the data points in aggregation granularity. Possible values are 'Average', 'Count', 'Maximum', 'Minimum',and 'Total'.
#   dimension (block)               : A 'dimension' block.
#   failing_periods (block)         : A 'failing_periods' block.
#   metric_measure_column (string)  : Specifies the column containing the metric measure number.
#   resource_id_column (string)     : Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID.
#
# failing_periods block structure               :
#   minimum_failing_periods_to_trigger_alert (int): (REQUIRED) Specifies the number of violations to trigger an alert. Should be smaller or equal to 'number_of_evaluation_periods'. Possible value is integer between 1 and 6.
#   number_of_evaluation_periods (int)            : (REQUIRED) Specifies the number of aggregated look-back points. The look-back time window is calculated based on the aggregation granularity 'window_duration' and the selected number of aggregated points. Possible value is integer between 1 and 6.
#
# dimension block structure:
#   operator (string)        : (REQUIRED) Operator for dimension values. Possible values are 'Exclude',and 'Include'.
#   values (string)          : (REQUIRED) List of dimension values. Use a wildcard '*' to collect all.


variable "scopes" {
  description = "(REQUIRED) Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list."
  type        = string

}
variable "severity" {
  description = "(REQUIRED) Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest."
  type        = string

}
variable "window_duration" {
  description = "(REQUIRED) Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If 'evaluation_frequency' is 'PT1M', possible values are 'PT1M', 'PT5M', 'PT10M', 'PT15M', 'PT30M', 'PT45M', 'PT1H', 'PT2H', 'PT3H', 'PT4H', 'PT5H', and 'PT6H'. Otherwise, possible values are 'PT5M', 'PT10M', 'PT15M', 'PT30M', 'PT45M', 'PT1H', 'PT2H', 'PT3H', 'PT4H', 'PT5H', 'PT6H', 'P1D', and 'P2D'."
  type        = string

}

# OPTIONAL VARIABLES

variable "evaluation_frequency" {
  description = "How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are 'PT1M', 'PT5M', 'PT10M', 'PT15M', 'PT30M', 'PT45M', 'PT1H', 'PT2H', 'PT3H', 'PT4H', 'PT5H', 'PT6H', 'P1D'."
  type        = string
  default     = null
}
variable "action" {
  description = "An 'action' block."
  type        = map(any)
  default     = null
}
#
# action block structure    :
#   action_groups (string)    : List of Action Group resource IDs to invoke when the alert fires.
#   custom_properties (string): Specifies the properties of an alert payload.


variable "auto_mitigation_enabled" {
  description = "Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be 'true' or 'false'. The default is 'false'."
  type        = bool
  default     = false
}
variable "workspace_alerts_storage_enabled" {
  description = "Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be 'true' or 'false'. The default is 'false'."
  type        = bool
  default     = false
}
variable "description" {
  description = "Specifies the description of the scheduled query rule."
  type        = string
  default     = null
}
variable "display_name" {
  description = "Specifies the display name of the alert rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be 'true' or 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "mute_actions_after_alert_duration" {
  description = "Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are 'PT5M', 'PT10M', 'PT15M', 'PT30M', 'PT45M', 'PT1H', 'PT2H', 'PT3H', 'PT4H', 'PT5H', 'PT6H', 'P1D' and 'P2D'."
  type        = string
  default     = null
}
variable "query_time_range_override" {
  description = "Set this if the alert evaluation period is different from the query time range. If not specified, the value is 'window_duration'*'number_of_evaluation_periods'. Possible values are 'PT5M', 'PT10M', 'PT15M', 'PT20M', 'PT30M', 'PT45M', 'PT1H', 'PT2H', 'PT3H', 'PT4H', 'PT5H', 'PT6H', 'P1D' and 'P2D'."
  type        = string
  default     = null
}
variable "skip_query_validation" {
  description = "Specifies the flag which indicates whether the provided query should be validated or not. The default is false."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Monitor Scheduled Query Rule."
  type        = map(any)
  default     = null
}
variable "target_resource_types" {
  description = "List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is 'Microsoft.Compute/virtualMachines', then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria."
  type        = string
  default     = null
}
