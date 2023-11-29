# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created."
  type        = string

}
variable "search_service_id" {
  description = "(REQUIRED) Specify the id of the Azure Search Service. Changing this forces a new resource to be created."
  type        = string

}
variable "subresource_name" {
  description = "(REQUIRED) Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "request_message" {
  description = "Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource."
  type        = string
  default     = null
}
