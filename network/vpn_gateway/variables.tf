# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "bgp_route_translation_for_nat_enabled" {
  description = "Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "bgp_settings" {
  description = "A 'bgp_settings' block."
  type        = map(any)
  default     = null
}
#
# bgp_settings block structure          :
#   asn (string)                          : (REQUIRED) The ASN of the BGP Speaker. Changing this forces a new resource to be created.
#   peer_weight (string)                  : (REQUIRED) The weight added to Routes learned from this BGP Speaker. Changing this forces a new resource to be created.
#   instance_0_bgp_peering_address (block): An 'instance_bgp_peering_address' block.
#   instance_1_bgp_peering_address (block): An 'instance_bgp_peering_address' block.
#
# instance_bgp_peering_address block structure:
#   custom_ips (list)                           : (REQUIRED) A list of custom BGP peering addresses to assign to this instance.


variable "routing_preference" {
  description = "Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, 'Microsoft Network'), or via the ISP network (public internet, set to 'Internet'). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "scale_unit" {
  description = "The Scale Unit for this VPN Gateway. Defaults to '1'."
  type        = string
  default     = "1"
}
variable "tags" {
  description = "A mapping of tags to assign to the VPN Gateway."
  type        = map(any)
  default     = null
}
