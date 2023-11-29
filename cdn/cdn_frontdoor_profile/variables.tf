# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Front Door Profile. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU for this Front Door Profile. Possible values include 'Standard_AzureFrontDoor' and 'Premium_AzureFrontDoor'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "response_timeout_seconds" {
  description = "Specifies the maximum response timeout in seconds. Possible values are between '16' and '240' seconds (inclusive). Defaults to '120' seconds."
  type        = string
  default     = "120"
}
variable "tags" {
  description = "Specifies a mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
