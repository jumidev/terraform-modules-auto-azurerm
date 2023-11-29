# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "web_pubsub_id" {
  description = "(REQUIRED) The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "custom_certificate_id" {
  description = "(REQUIRED) The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created."
  type        = string

}
