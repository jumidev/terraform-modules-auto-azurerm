# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string

}
variable "plan" {
  description = "(REQUIRED) A 'plan' block. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = map(any)
}
#
# plan block structure   :
#   effective_date (string): (REQUIRED) Specifies the date when plan was applied. Changing this forces a new Azure Native New Relic Monitor to be created.
#   billing_cycle (string) : Specifies the billing cycles. Possible values are 'MONTHLY', 'WEEKLY' and 'YEARLY'. Defaults to 'MONTHLY'. Changing this forces a new Azure Native New Relic Monitor to be created.
#   plan_id (string)       : Specifies the plan id published by NewRelic. The only possible value is 'newrelic-pay-as-you-go-free-live'. Defaults to 'newrelic-pay-as-you-go-free-live'. Changing this forces a new Azure Native New Relic Monitor to be created.
#   usage_type (string)    : Specifies the usage type. Possible values are 'COMMITTED' and 'PAYG'. Defaults to 'PAYG'. Changing this forces a new Azure Native New Relic Monitor to be created.


variable "user" {
  description = "(REQUIRED) A 'user' block. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = map(any)
}
#
# user block structure :
#   email (string)       : (REQUIRED) Specifies the user Email. Changing this forces a new Azure Native New Relic Monitor to be created.
#   first_name (string)  : (REQUIRED) Specifies the first name. Changing this forces a new Azure Native New Relic Monitor to be created.
#   last_name (string)   : (REQUIRED) Specifies the last name. Changing this forces a new Azure Native New Relic Monitor to be created.
#   phone_number (string): (REQUIRED) Specifies the contact phone number. Changing this forces a new Azure Native New Relic Monitor to be created.



# OPTIONAL VARIABLES

variable "account_creation_source" {
  description = "Specifies the source of account creation. Possible values are 'LIFTR' and 'NEWRELIC'. Defaults to 'LIFTR'. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string
  default     = "LIFTR"
}
variable "account_id" {
  description = "Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string
  default     = null
}
variable "ingestion_key" {
  description = "Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string
  default     = null
}
variable "organization_id" {
  description = "Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string
  default     = null
}
variable "org_creation_source" {
  description = "Specifies the source of org creation. Possible values are 'LIFTR' and 'NEWRELIC'. Defaults to 'LIFTR'. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string
  default     = "LIFTR"
}
variable "user_id" {
  description = "Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created."
  type        = string
  default     = null
}
