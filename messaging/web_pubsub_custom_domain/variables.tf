# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "domain_name" {
  description = "(REQUIRED) Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "web_pubsub_id" {
  description = "(REQUIRED) Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "web_pubsub_custom_certificate_id" {
  description = "(REQUIRED) Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
