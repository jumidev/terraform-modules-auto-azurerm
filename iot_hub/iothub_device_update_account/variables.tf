# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this IoT Hub Device Update Account. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this IoT Hub Device Update Account.


variable "public_network_access_enabled" {
  description = "Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are 'true' and 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "sku" {
  description = "Sku of the IoT Hub Device Update Account. Possible values are 'Free' and 'Standard'. Defaults to 'Standard'."
  type        = string
  default     = "Standard"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the IoT Hub Device Update Account."
  type        = map(any)
  default     = null
}
