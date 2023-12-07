# REQUIRED VARIABLES

variable "ip_configuration" {
  description = "(REQUIRED) One or more (up to 3) 'ip_configuration' blocks documented below. An active-standby gateway requires exactly one 'ip_configuration' block, an active-active gateway requires exactly two 'ip_configuration' blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three 'ip_configuration' blocks."
  type        = list(any)

}
variable "location" {
  description = "(REQUIRED) The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the Virtual Network Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) Configuration of the size and capacity of the virtual network gateway. Valid options are 'Basic', 'Standard', 'HighPerformance', 'UltraPerformance', 'ErGw1AZ', 'ErGw2AZ', 'ErGw3AZ', 'VpnGw1', 'VpnGw2', 'VpnGw3', 'VpnGw4','VpnGw5', 'VpnGw1AZ', 'VpnGw2AZ', 'VpnGw3AZ','VpnGw4AZ' and 'VpnGw5AZ' and depend on the 'type', 'vpn_type' and 'generation' arguments. A 'PolicyBased' gateway only supports the 'Basic' SKU. Further, the 'UltraPerformance' SKU is only supported by an 'ExpressRoute' gateway."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of the Virtual Network Gateway. Valid options are 'Vpn' or 'ExpressRoute'. Changing the type forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "active_active" {
  description = "If 'true', an active-active Virtual Network Gateway will be created. An active-active gateway requires a 'HighPerformance' or an 'UltraPerformance' SKU. If 'false', an active-standby gateway will be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "default_local_network_gateway_id" {
  description = "The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (*forced tunnelling*). Refer to the [Azure documentation on forced tunnelling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm). If not specified, forced tunnelling is disabled."
  type        = string
  default     = null
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created."
  type        = string
  default     = null
}
variable "enable_bgp" {
  description = "If 'true', BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "bgp_settings" {
  description = "A 'bgp_settings' block which is documented below. In this block the BGP specific settings can be defined."
  type        = string
  default     = null
}
variable "custom_route" {
  description = "A 'custom_route' block. Specifies a custom routes address space for a virtual network gateway and a VpnClient."
  type        = map(any)
  default     = null
}
#
# custom_route block structure:
#   address_prefixes (list)     : A list of address blocks reserved for this virtual network in CIDR notation.


variable "generation" {
  description = "The Generation of the Virtual Network gateway. Possible values include 'Generation1', 'Generation2' or 'None'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "private_ip_address_enabled" {
  description = "Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "bgp_route_translation_for_nat_enabled" {
  description = "Is BGP Route Translation for NAT enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "dns_forwarding_enabled" {
  description = "Is DNS forwarding enabled?"
  type        = bool
  default     = null
}
variable "ip_sec_replay_protection_enabled" {
  description = "Is IP Sec Replay Protection enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "policy_group" {
  description = "One or more 'policy_group' blocks."
  type        = map(map(any))
  default     = null
}
#
# policy_group block structure:
#   name (string)               : (REQUIRED) The name of the Virtual Network Gateway Policy Group.
#   policy_member (block)       : (REQUIRED) One or more 'policy_member' blocks.
#   is_default (bool)           : Is this a Default Virtual Network Gateway Policy Group? Defaults to 'false'.
#   priority (string)           : The priority for the Virtual Network Gateway Policy Group. Defaults to '0'.
#
# policy_member block structure:
#   name (string)                : (REQUIRED) The name of the Virtual Network Gateway Policy Group Member.
#   type (string)                : (REQUIRED) The VPN Policy Member attribute type. Possible values are 'AADGroupId', 'CertificateGroupId' and 'RadiusAzureGroupId'.
#   value (string)               : (REQUIRED) The value of attribute that is used for this Virtual Network Gateway Policy Group Member.


variable "remote_vnet_traffic_enabled" {
  description = "Is remote vnet traffic that is used to configure this gateway to accept traffic from other Azure Virtual Networks enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "virtual_wan_traffic_enabled" {
  description = "Is remote vnet traffic that is used to configure this gateway to accept traffic from remote Virtual WAN networks enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "vpn_client_configuration" {
  description = "A 'vpn_client_configuration' block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections."
  type        = string
  default     = null
}
variable "vpn_type" {
  description = "The routing type of the Virtual Network Gateway. Valid options are 'RouteBased' or 'PolicyBased'. Defaults to 'RouteBased'. Changing this forces a new resource to be created."
  type        = string
  default     = "RouteBased"
}
