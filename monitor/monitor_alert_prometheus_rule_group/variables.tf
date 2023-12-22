# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "rule" {
  description = "(REQUIRED) A 'rule' block."
  type        = map(any)
}
#
# rule block structure    :
#   action (block)          : An 'action' block.
#   alert (string)          : Specifies the Alert rule name.
#   annotations (string)    : Specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links.
#   enabled (bool)          : Is this rule enabled? Possible values are 'true' and 'false'.
#   expression (string)     : (REQUIRED) Specifies the Prometheus Query Language expression to evaluate. For more details see [this doc](https://prometheus.io/docs/prometheus/latest/querying/basics). Evaluate at the period given by 'interval' and record the result as a new set of time series with the metric name given by 'record'.
#   for (string)            : Specifies the amount of time alert must be active before firing, represented in ISO 8601 duration format.
#   labels (string)         : Specifies the labels to add or overwrite before storing the result.
#   record (string)         : Specifies the recorded metrics name.
#   alert_resolution (block): An 'alert_resolution' block.
#   severity (number)       : Specifies the severity of the alerts fired by the rule. Possible values are between 0 and 4.
#
# alert_resolution block structure:
#   auto_resolved (string)          : Is the alert auto-resolution? Possible values are 'true' and 'false'.
#   time_to_resolve (string)        : Specifies the alert auto-resolution interval, represented in ISO 8601 duration format.
#
# action block structure    :
#   action_group_id (string)  : (REQUIRED) Specifies the resource id of the monitor action group.
#   action_properties (string): Specifies the properties of an action group object.


variable "scopes" {
  description = "(REQUIRED) Specifies the resource ID of the Azure Monitor Workspace."
  type        = string

}

# OPTIONAL VARIABLES

variable "cluster_name" {
  description = "Specifies the name of the Managed Kubernetes Cluster."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of the Alert Management Prometheus Rule Group."
  type        = string
  default     = null
}
variable "rule_group_enabled" {
  description = "Is this Alert Management Prometheus Rule Group enabled? Possible values are 'true' and 'false'."
  type        = bool
  default     = null
}
variable "interval" {
  description = "Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between 'PT1M' and 'PT15M'."
  type        = number
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Alert Management Prometheus Rule Group."
  type        = map(any)
  default     = null
}
