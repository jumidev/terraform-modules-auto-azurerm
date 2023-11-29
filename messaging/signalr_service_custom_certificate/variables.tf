# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the SignalR Custom Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "signalr_service_id" {
  description = "(REQUIRED) The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "custom_certificate_id" {
  description = "(REQUIRED) The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created."
  type        = string

}
