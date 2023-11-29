# REQUIRED VARIABLES

variable "api_operation_id" {
  description = "(REQUIRED) The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of the API Management API Operation Tag."
  type        = string

}
