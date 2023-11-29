# REQUIRED VARIABLES

variable "mobile_network_data_network_name" {
  description = "(REQUIRED) Specifies the name of the 'azurerm_mobile_network_data_network' which the Attached Data Network belongs to, Changing this forces a new Mobile Network Attached Data Network to be created."
  type        = string

}
variable "mobile_network_packet_core_data_plane_id" {
  description = "(REQUIRED) Specifies the ID of the 'azurerm_mobile_network_packet_core_data_plane' which the Mobile Network Attached Data Network belongs to. Changing this forces a new Mobile Network Attached Data Network to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Attached Data Network should exist. Changing this forces a new Mobile Network Attached Data Network to be created."
  type        = string

}
variable "dns_addresses" {
  description = "(REQUIRED) Specifies the DNS servers to signal to UEs to use for this attached data network."
  type        = string

}

# OPTIONAL VARIABLES

variable "user_plane_access_name" {
  description = "Specifies the logical name for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_plane_access_ipv4_address" {
  description = "The IPv4 address for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_plane_access_ipv4_subnet" {
  description = "The IPv4 subnet for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_plane_access_ipv4_gateway" {
  description = "The default IPv4 gateway for the user data plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "network_address_port_translation" {
  description = "A 'network_address_port_translation' block."
  type        = map(any)
  default     = null
}
#
# network_address_port_translation block structure :
#   pinhole_maximum_number (int)                     : Maximum number of UDP and TCP pinholes that can be open simultaneously on the core interface. For 5G networks, this is the N6 interface. For 4G networks, this is the SGi interface. Must be between 1 and 65536.
#   icmp_pinhole_timeout_in_seconds (int)            : Pinhole timeout for ICMP pinholes in seconds. Must between '1' to '180', Default to '180'.
#   tcp_pinhole_timeout_in_seconds (int)             : Pinhole timeout for TCP pinholes in seconds. Must between '1' to '180', Default to '180'.
#   udp_pinhole_timeout_in_seconds (int)             : Pinhole timeout for UDP pinholes in seconds. Must between '1' to '180', Default to '180'.
#   port_range (block)                               : A 'port_range' block.
#   tcp_port_reuse_minimum_hold_time_in_seconds (int): Minimum time in seconds that will pass before a TCP port that was used by a closed pinhole can be reused. Defaults to '120'.
#   udp_port_reuse_minimum_hold_time_in_seconds (int): Minimum time in seconds that will pass before a UDP port that was used by a closed pinhole can be reused. Defaults to '60'.
#
# port_range block structure:
#   maximum (string)          : Specifies the maximum port number.
#   minimum (string)          : Specifies the minimum port number.


variable "user_equipment_address_pool_prefixes" {
  description = "Specifies the user equipment (UE) address pool prefixes for the attached data network from which the packet core instance will dynamically assign IP addresses to UEs. The packet core instance assigns an IP address to a UE when the UE sets up a PDU session. At least one of 'user_equipment_address_pool_prefixes' and 'user_equipment_static_address_pool_prefix'. If you define both, they must be of the same size."
  type        = string
  default     = null
}
variable "user_equipment_static_address_pool_prefixes" {
  description = "Specifies the user equipment (UE) address pool prefixes for the attached data network from which the packet core instance will assign static IP addresses to UEs. The packet core instance assigns an IP address to a UE when the UE sets up a PDU session. The static IP address for a specific UE is set in StaticIPConfiguration on the corresponding SIM resource. At least one of 'user_equipment_address_pool_prefix' and 'user_equipment_static_address_pool_prefixes'. If you define both, they must be of the same size."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Attached Data Network."
  type        = map(any)
  default     = null
}
