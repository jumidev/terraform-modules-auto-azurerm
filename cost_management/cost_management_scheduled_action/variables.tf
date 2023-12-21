# REQUIRED VARIABLES

variable "display_name" {
  description = "(REQUIRED) User visible input name of the Cost Management Scheduled Action."
  type        = string

}
variable "email_address_sender" {
  description = "(REQUIRED) Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails."
  type        = string

}
variable "email_addresses" {
  description = "(REQUIRED) Specifies a list of email addresses that will receive the Scheduled Action."
  type        = list(any)

}
variable "email_subject" {
  description = "(REQUIRED) Subject of the email. Length is limited to 70 characters."
  type        = string

}
variable "end_date" {
  description = "(REQUIRED) The end date and time of the Scheduled Action (UTC)."
  type        = string

}
variable "frequency" {
  description = "(REQUIRED) Frequency of the schedule. Possible values are 'Daily', 'Monthly' and 'Weekly'. Value 'Monthly' requires either 'weeks_of_month' and 'days_of_week' or 'day_of_month' to be specified. Value 'Weekly' requires 'days_of_week' to be specified."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created."
  type        = string

}
variable "start_date" {
  description = "(REQUIRED) The start date and time of the Scheduled Action (UTC)."
  type        = string

}
variable "view_id" {
  description = "(REQUIRED) The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "day_of_month" {
  description = "UTC day on which cost analysis data will be emailed. Must be between '1' and '31'. This property is applicable when 'frequency' is 'Monthly'."
  type        = string
  default     = null
}
variable "days_of_week" {
  description = "Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is 'Weekly' or 'Monthly'. Possible values are 'Friday', 'Monday', 'Saturday', 'Sunday', 'Thursday', 'Tuesday' and 'Wednesday'."
  type        = string
  default     = null
}
variable "hour_of_day" {
  description = "UTC time at which cost analysis data will be emailed. Must be between '0' and '23'."
  type        = string
  default     = null
}
variable "message" {
  description = "Message to be added in the email. Length is limited to 250 characters."
  type        = string
  default     = null
}
variable "weeks_of_month" {
  description = "Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when 'frequency' is 'Monthly' and used in combination with 'days_of_week'. Possible values are 'First', 'Fourth', 'Last', 'Second' and 'Third'."
  type        = string
  default     = null
}
