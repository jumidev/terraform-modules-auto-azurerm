# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created."
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
variable "facebook_application_id" {
  description = "(REQUIRED) The Facebook Application ID for the Facebook Channel."
  type        = string

}
variable "facebook_application_secret" {
  description = "(REQUIRED) The Facebook Application Secret for the Facebook Channel."
  type        = string

}
variable "page" {
  description = "(REQUIRED) One or more 'page' blocks."
  type        = map(map(any))
}
#
# page block structure :
#   access_token (string): (REQUIRED) The Facebook Page Access Token for the Facebook Channel.


