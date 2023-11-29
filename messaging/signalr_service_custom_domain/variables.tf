# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "domain_name" {
  description = "(REQUIRED) Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "signalr_service_id" {
  description = "(REQUIRED) Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "signalr_custom_certificate_id" {
  description = "(REQUIRED) Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created."
  type        = string

}
