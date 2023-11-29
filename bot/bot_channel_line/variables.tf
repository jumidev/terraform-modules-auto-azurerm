# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created."
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
variable "line_channel" {
  description = "(REQUIRED) One or more 'line_channel' blocks."
  type        = map(map(any))
}
#
# line_channel block structure:
#   access_token (string)       : (REQUIRED) The access token which is used to call the Line Channel API.
#   secret (string)             : (REQUIRED) The secret which is used to access the Line Channel.


