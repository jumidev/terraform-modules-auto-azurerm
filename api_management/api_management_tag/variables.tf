# REQUIRED VARIABLES

variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management. Changing this forces a new API Management Tag to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service."
  type        = string

}

# OPTIONAL VARIABLES

variable "display_name" {
  description = "The display name of the API Management Tag. Defaults to the 'name'."
  type        = string
  default     = "name"
}
