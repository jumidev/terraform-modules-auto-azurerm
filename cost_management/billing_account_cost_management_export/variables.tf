# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cost Management Export. Changing this forces a new resource to be created."
  type        = string

}
variable "billing_account_id" {
  description = "(REQUIRED) The id of the billing account on which to create an export. Changing this forces a new resource to be created."
  type        = string

}
variable "recurrence_type" {
  description = "(REQUIRED) How often the requested information will be exported. Valid values include 'Annually', 'Daily', 'Monthly', 'Weekly'."
  type        = string

}
variable "recurrence_period_start_date" {
  description = "(REQUIRED) The date the export will start capturing information."
  type        = string

}
variable "recurrence_period_end_date" {
  description = "(REQUIRED) The date the export will stop capturing information."
  type        = string

}
variable "export_data_storage_location" {
  description = "(REQUIRED) A 'export_data_storage_location' block."
  type        = map(any)
}
#
# export_data_storage_location block structure:
#   container_id (string)                       : (REQUIRED) The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created.
#   root_folder_path (string)                   : (REQUIRED) The path of the directory where exports will be uploaded. Changing this forces a new resource to be created.


variable "export_data_options" {
  description = "(REQUIRED) A 'export_data_options' block."
  type        = map(any)
}
#
# export_data_options block structure:
#   type (string)                      : (REQUIRED) The type of the query. Possible values are 'ActualCost', 'AmortizedCost' and 'Usage'.
#   time_frame (string)                : (REQUIRED) The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: 'WeekToDate', 'MonthToDate', 'BillingMonthToDate', 'TheLast7Days', 'TheLastMonth', 'TheLastBillingMonth', 'Custom'.



# OPTIONAL VARIABLES

variable "active" {
  description = "Is the cost management export active? Default is 'true'."
  type        = bool
  default     = true
}
