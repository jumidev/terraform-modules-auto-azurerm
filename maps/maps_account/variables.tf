# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Azure Maps Account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU of the Azure Maps Account. Possible values are 'S0', 'S1' and 'G2'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "local_authentication_enabled" {
  description = "Is local authentication enabled for this Azure Maps Account? When 'false', all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the Azure Maps Account."
  type        = map(any)
  default     = null
}
