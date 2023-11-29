# REQUIRED VARIABLES

variable "gateway_id" {
  description = "(REQUIRED) The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created."
  type        = string

}
variable "api_id" {
  description = "(REQUIRED) The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created."
  type        = string

}
