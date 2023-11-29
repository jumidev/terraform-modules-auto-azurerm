# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies The Azure Region where the resource exists. Changing this force a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The name which should be used for the SKU of the service. Possible values are 'C0', 'F0' and 'S1'."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the service."
  type        = map(any)
  default     = null
}
