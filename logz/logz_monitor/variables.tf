# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this logz Monitor. Changing this forces a new logz Monitor to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the logz Monitor should exist. Changing this forces a new logz Monitor to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the logz Monitor should exist. Changing this forces a new logz Monitor to be created."
  type        = string

}
variable "plan" {
  description = "(REQUIRED) A 'plan' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# plan block structure     :
#   billing_cycle (string)   : (REQUIRED) Different billing cycles. Possible values are 'MONTHLY' or 'WEEKLY'. Changing this forces a new logz Monitor to be created.
#   effective_date (datetime): (REQUIRED) Date when plan was applied. Changing this forces a new logz Monitor to be created.
#   usage_type (string)      : (REQUIRED) Different usage types. Possible values are 'PAYG' or 'COMMITTED'. Changing this forces a new logz Monitor to be created.
#   plan_id (string)         : Plan id as published by Logz. The only possible value is '100gb14days'. Defaults to '100gb14days'. Changing this forces a new logz Monitor to be created.


variable "user" {
  description = "(REQUIRED) A 'user' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# user block structure:
#   email (string)      : (REQUIRED) Email of the user used by Logz for contacting them if needed. Changing this forces a new logz Monitor to be created.
#   first_name (string) : (REQUIRED) First Name of the user. Changing this forces a new logz Monitor to be created.
#   last_name (string)  : (REQUIRED) Last Name of the user. Changing this forces a new logz Monitor to be created.
#   phone_number (int)  : (REQUIRED) Phone number of the user used by Logz for contacting them if needed. Changing this forces a new logz Monitor to be created.



# OPTIONAL VARIABLES

variable "company_name" {
  description = "Name of the Logz organization. Changing this forces a new logz Monitor to be created."
  type        = string
  default     = null
}
variable "enterprise_app_id" {
  description = "The ID of the Enterprise App. Changing this forces a new logz Monitor to be created."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Whether the resource monitoring is enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the logz Monitor."
  type        = map(any)
  default     = null
}
