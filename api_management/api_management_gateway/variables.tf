# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created."
  type        = string

}
variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created."
  type        = string

}
variable "location_data" {
  description = "(REQUIRED) A 'location_data' block."
  type        = map(any)
}
#
# location_data block structure:
#   city (string)                : The city or locality where the resource is located.
#   district (string)            : The district, state, or province where the resource is located.
#   region (string)              : The country or region where the resource is located.



# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the API Management Gateway."
  type        = string
  default     = null
}
