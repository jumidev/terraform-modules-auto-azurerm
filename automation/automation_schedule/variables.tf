# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Schedule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created."
  type        = string

}
variable "frequency" {
  description = "(REQUIRED) The frequency of the schedule. - can be either 'OneTime', 'Day', 'Hour', 'Week', or 'Month'."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for this Schedule."
  type        = string
  default     = null
}
variable "interval" {
  description = "The number of 'frequency's between runs. Only valid when frequency is 'Day', 'Hour', 'Week', or 'Month' and defaults to '1'."
  type        = int
  default     = 1
}
variable "start_time" {
  description = "Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created."
  type        = string
  default     = null
}
variable "expiry_time" {
  description = "The end time of the schedule."
  type        = string
  default     = null
}
variable "timezone" {
  description = "The timezone of the start time. Defaults to 'Etc/UTC'. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>"
  type        = string
  default     = "Etc/UTC"
}
variable "week_days" {
  description = "List of days of the week that the job should execute on. Only valid when frequency is 'Week'. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'."
  type        = string
  default     = null
}
variable "month_days" {
  description = "List of days of the month that the job should execute on. Must be between '1' and '31'. '-1' for last day of the month. Only valid when frequency is 'Month'."
  type        = int
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
