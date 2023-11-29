# REQUIRED VARIABLES

variable "managed_api_id" {
  description = "(REQUIRED) The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The Name which should be used for this API Connection. Changing this forces a new API Connection to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "display_name" {
  description = "A display name for this API Connection. Changing this forces a new API Connection to be created."
  type        = string
  default     = null
}
variable "parameter_values" {
  description = "A map of parameter values associated with this API Connection. Changing this forces a new API Connection to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the API Connection."
  type        = map(any)
  default     = null
}
