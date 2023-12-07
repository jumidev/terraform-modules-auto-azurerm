# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the IotHub resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created."
  type        = string

}
variable "sub_domain" {
  description = "(REQUIRED) A 'sub_domain' name. Subdomain for the IoT Central URL. Each application must have a unique subdomain."
  type        = string

}

# OPTIONAL VARIABLES

variable "display_name" {
  description = "A 'display_name' name. Custom display name for the IoT Central application. Default is resource name."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this IoT Central Application. The only possible value is 'SystemAssigned'.


variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the IoT Central Application. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "sku" {
  description = "A 'sku' name. Possible values is 'ST0', 'ST1', 'ST2', Default value is 'ST1'"
  type        = string
  default     = "ST1"
}
variable "template" {
  description = "A 'template' name. IoT Central application template name. Default is a custom application. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
