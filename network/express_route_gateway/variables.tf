# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the ExpressRoute gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "scale_units" {
  description = "(REQUIRED) The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps)."
  type        = number

}

# OPTIONAL VARIABLES

variable "allow_non_virtual_wan_traffic" {
  description = "Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
