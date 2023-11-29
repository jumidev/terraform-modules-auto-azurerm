# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created."
  type        = string

}
variable "api_id" {
  description = "(REQUIRED) The ID of the API Management API. Changing this forces a new API Management API Release to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "notes" {
  description = "The Release Notes."
  type        = string
  default     = null
}
