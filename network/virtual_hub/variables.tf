# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Virtual Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "address_prefix" {
  description = "The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a '/24'. Azure recommends using a '/23'](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation)."
  type        = string
  default     = null
}
variable "hub_routing_preference" {
  description = "The hub routing preference. Possible values are 'ExpressRoute', 'ASPath' and 'VpnGateway'. Defaults to 'ExpressRoute'."
  type        = string
  default     = "ExpressRoute"
}
variable "route" {
  description = "One or more 'route' blocks."
  type        = map(map(any))
  default     = null
}
#
# route block structure       :
#   address_prefixes (list)     : (REQUIRED) A list of Address Prefixes.
#   next_hop_ip_address (string): (REQUIRED) The IP Address that Packets should be forwarded to as the Next Hop.


variable "sku" {
  description = "The SKU of the Virtual Hub. Possible values are 'Basic' and 'Standard'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "virtual_wan_id" {
  description = "The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Virtual Hub."
  type        = map(any)
  default     = null
}
