# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created."
  type        = string

}
variable "signalr_service_id" {
  description = "(REQUIRED) The id of the Signalr Service. Changing this forces a new resource to be created."
  type        = string

}
variable "sub_resource_name" {
  description = "(REQUIRED) The sub resource name which the Signalr Private Endpoint can connect to. Possible values are 'sites', 'vault'. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "request_message" {
  description = "The request message for requesting approval of the Shared Private Link Enabled Remote Resource."
  type        = string
  default     = null
}
