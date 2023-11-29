# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Automation Account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU of the account. Possible values are 'Basic' and 'Free'."
  type        = string

}

# OPTIONAL VARIABLES

variable "local_authentication_enabled" {
  description = "Whether requests using non-AAD authentication are blocked. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the automation account. Defaults to 'true'."
  type        = bool
  default     = true
}
