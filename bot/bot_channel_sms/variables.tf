# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "phone_number" {
  description = "(REQUIRED) The phone number for the SMS Channel."
  type        = string

}
variable "sms_channel_account_security_id" {
  description = "(REQUIRED) The account security identifier (SID) for the SMS Channel."
  type        = string

}
variable "sms_channel_auth_token" {
  description = "(REQUIRED) The authorization token for the SMS Channel."
  type        = string

}
