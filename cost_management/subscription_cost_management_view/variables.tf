# REQUIRED VARIABLES

variable "accumulated" {
  description = "(REQUIRED) Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created."
  type        = bool

}
variable "chart_type" {
  description = "(REQUIRED) Chart type of the main view in Cost Analysis. Possible values are 'Area', 'GroupedColumn', 'Line', 'StackedColumn' and 'Table'."
  type        = string

}
variable "dataset" {
  description = "(REQUIRED) A 'dataset' block."
  type        = map(any)
}
#
# dataset block structure:
#   aggregation (list)     : (REQUIRED) One or more 'aggregation' blocks.
#   granularity (string)   : (REQUIRED) The granularity of rows in the report. Possible values are 'Daily' and 'Monthly'.
#   grouping (block)       : One or more 'grouping' blocks.
#   sorting (block)        : One or more 'sorting' blocks, containing the order by expression to be used in the report
#
# grouping block structure:
#   name (string)           : (REQUIRED) The name of the column to group.
#   type (string)           : (REQUIRED) The type of the column. Possible values are 'Dimension' and 'TagKey'.
#
# sorting block structure:
#   direction (string)     : (REQUIRED) Direction of sort. Possible values are 'Ascending' and 'Descending'.
#   name (string)          : (REQUIRED) The name of the column to sort.


variable "display_name" {
  description = "(REQUIRED) User visible input name of the Cost Management View."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created."
  type        = string

}
variable "report_type" {
  description = "(REQUIRED) The type of the report. The only possible value is 'Usage'."
  type        = string

}
variable "subscription_id" {
  description = "(REQUIRED) The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created."
  type        = string

}
variable "timeframe" {
  description = "(REQUIRED) The time frame for pulling data for the report. Possible values are 'Custom', 'MonthToDate', 'WeekToDate' and 'YearToDate'."
  type        = string

}

# OPTIONAL VARIABLES

variable "kpi" {
  description = "One or more 'kpi' blocks, to show in Cost Analysis UI."
  type        = map(map(any))
  default     = null
}
#
# kpi block structure:
#   type (string)      : (REQUIRED) KPI type. Possible values are 'Budget' and 'Forecast'.


variable "pivot" {
  description = "One or more 'pivot' blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots."
  type        = map(map(any))
  default     = null
}
#
# pivot block structure:
#   name (string)        : (REQUIRED) The name of the column which should be used for this sub-view in the Cost Analysis UI.
#   type (string)        : (REQUIRED) The data type to show in this sub-view. Possible values are 'Dimension' and 'TagKey'.


