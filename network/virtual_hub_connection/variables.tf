# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "remote_virtual_network_id" {
  description = "(REQUIRED) The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "internet_security_enabled" {
  description = "Should Internet Security be enabled to secure internet traffic? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "routing" {
  description = "A 'routing' block."
  type        = map(any)
  default     = null
}
#
# routing block structure                           :
#   associated_route_table_id (string)                : The ID of the route table associated with this Virtual Hub connection.
#   inbound_route_map_id (string)                     : The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
#   outbound_route_map_id (string)                    : The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
#   propagated_route_table (block)                    : A 'propagated_route_table' block.
#   static_vnet_local_route_override_criteria (string): The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet. Possible values are 'Contains' and 'Equal'. Defaults to 'Contains'. Changing this forces a new resource to be created.
#   static_vnet_route (block)                         : A 'static_vnet_route' block.
#
# propagated_route_table block structure:
#   labels (string)                       : The list of labels to assign to this route table.
#   route_table_ids (list)                : A list of Route Table IDs to associated with this Virtual Hub Connection.
#
# static_vnet_route block structure:
#   address_prefixes (list)          : A list of CIDR Ranges which should be used as Address Prefixes.
#   next_hop_ip_address (string)     : The IP Address which should be used for the Next Hop.


