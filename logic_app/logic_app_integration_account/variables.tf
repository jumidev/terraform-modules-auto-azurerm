# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account. Changing this forces a new Logic App Integration Account to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU name of the Logic App Integration Account. Possible Values are 'Basic', 'Free' and 'Standard'."
  type        = string

}

# OPTIONAL VARIABLES

variable "integration_service_environment_id" {
  description = "The resource ID of the Integration Service Environment. Changing this forces a new Logic App Integration Account to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Logic App Integration Account."
  type        = map(any)
  default     = null
}
