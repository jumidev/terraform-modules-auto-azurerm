# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the scheduled query rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "criteria" {
  description = "(REQUIRED) A 'criteria' block."
  type        = map(any)
}
#
# criteria block structure:
#   dimension (block)       : (REQUIRED) A 'dimension' block.
#   metric_name (string)    : (REQUIRED) Name of the metric. Supported metrics are listed in the Azure Monitor [Microsoft.OperationalInsights/workspaces](https://docs.microsoft.com/azure/azure-monitor/platform/metrics-supported#microsoftoperationalinsightsworkspaces) metrics namespace.
#
# dimension block structure:
#   operator (string)        : Operator for dimension values, - 'Include'. Defaults to 'Include'.
#   values (string)          : (REQUIRED) List of dimension values.


variable "data_source_id" {
  description = "(REQUIRED) The resource URI over which log search query is to be run."
  type        = string

}

# OPTIONAL VARIABLES

variable "authorized_resource_ids" {
  description = "A list of IDs of Resources referred into query."
  type        = list(any)
  default     = []
}
variable "description" {
  description = "The description of the scheduled query rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Whether this scheduled query rule is enabled. Default is 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
