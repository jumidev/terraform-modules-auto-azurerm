# REQUIRED VARIABLES

variable "api_id" {
  description = "(REQUIRED) The ID of the API Management API. Changing this forces a new API Management API Tag to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created."
  type        = string

}
