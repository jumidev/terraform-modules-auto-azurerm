# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the connection. Changing the name forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the connection Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the connection is located. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of connection. Valid options are 'IPsec' (Site-to-Site), 'ExpressRoute' (ExpressRoute), and 'Vnet2Vnet' (VNet-to-VNet). Each connection type requires different mandatory arguments (refer to the examples above). Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_network_gateway_id" {
  description = "(REQUIRED) The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authorization_key" {
  description = "The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection."
  type        = string
  default     = null
}
variable "dpd_timeout_seconds" {
  description = "The dead peer detection timeout of this connection in seconds. Changing this forces a new resource to be created."
  type        = number
  default     = null
}
variable "express_route_circuit_id" {
  description = "The ID of the Express Route Circuit when creating an ExpressRoute connection (i.e. when 'type' is 'ExpressRoute'). The Express Route Circuit can be in the same or in a different subscription. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "peer_virtual_network_gateway_id" {
  description = "The ID of the peer virtual network gateway when creating a VNet-to-VNet connection (i.e. when 'type' is 'Vnet2Vnet'). The peer Virtual Network Gateway can be in the same or in a different subscription. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "local_azure_ip_address_enabled" {
  description = "Use private local Azure IP for the connection. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "local_network_gateway_id" {
  description = "The ID of the local network gateway when creating Site-to-Site connection (i.e. when 'type' is 'IPsec')."
  type        = string
  default     = null
}
variable "routing_weight" {
  description = "The routing weight. Defaults to '10'."
  type        = string
  default     = "10"
}
variable "shared_key" {
  description = "The shared IPSec key. A key could be provided if a Site-to-Site, VNet-to-VNet or ExpressRoute connection is created."
  type        = string
  default     = null
}
variable "connection_mode" {
  description = "Connection mode to use. Possible values are 'Default', 'InitiatorOnly' and 'ResponderOnly'. Defaults to 'Default'. Changing this value will force a resource to be created."
  type        = string
  default     = "Default"
}
variable "connection_protocol" {
  description = "The IKE protocol version to use. Possible values are 'IKEv1' and 'IKEv2', values are 'IKEv1' and 'IKEv2'. Defaults to 'IKEv2'. Changing this forces a new resource to be created. -> **Note:** Only valid for 'IPSec' connections on virtual network gateways with SKU 'VpnGw1', 'VpnGw2', 'VpnGw3', 'VpnGw1AZ', 'VpnGw2AZ' or 'VpnGw3AZ'."
  type        = string
  default     = "IKEv2"
}
variable "enable_bgp" {
  description = "If 'true', BGP (Border Gateway Protocol) is enabled for this connection. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "custom_bgp_addresses" {
  description = "A 'custom_bgp_addresses' block which is documented below. The block can only be used on 'IPSec' / 'activeactive' connections, For details about see [the relevant section in the Azure documentation](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-aws-bgp)."
  type        = map(any)
  default     = null
}
#
# custom_bgp_addresses block structure:
#   primary (string)                    : (REQUIRED) single IP address that is part of the 'azurerm_virtual_network_gateway' ip_configuration (first one)
#   secondary (string)                  : single IP address that is part of the 'azurerm_virtual_network_gateway' ip_configuration (second one)


variable "express_route_gateway_bypass" {
  description = "If 'true', data packets will bypass ExpressRoute Gateway for data forwarding This is only valid for ExpressRoute connections."
  type        = string
  default     = null
}
variable "egress_nat_rule_ids" {
  description = "A list of the egress NAT Rule Ids."
  type        = list(any)
  default     = []
}
variable "ingress_nat_rule_ids" {
  description = "A list of the ingress NAT Rule Ids."
  type        = list(any)
  default     = []
}
variable "use_policy_based_traffic_selectors" {
  description = "If 'true', policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an 'ipsec_policy' block. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "ipsec_policy" {
  description = "A 'ipsec_policy' block which is documented below. Only a single policy can be defined for a connection. For details on custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell)."
  type        = map(any)
  default     = null
}
#
# ipsec_policy block structure:
#   dh_group (string)           : (REQUIRED) The DH group used in IKE phase 1 for initial SA. Valid options are 'DHGroup1', 'DHGroup14', 'DHGroup2', 'DHGroup2048', 'DHGroup24', 'ECP256', 'ECP384', or 'None'.
#   ike_encryption (string)     : (REQUIRED) The IKE encryption algorithm. Valid options are 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', or 'GCMAES256'.
#   ike_integrity (string)      : (REQUIRED) The IKE integrity algorithm. Valid options are 'GCMAES128', 'GCMAES256', 'MD5', 'SHA1', 'SHA256', or 'SHA384'.
#   ipsec_encryption (string)   : (REQUIRED) The IPSec encryption algorithm. Valid options are 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', 'GCMAES192', 'GCMAES256', or 'None'.
#   ipsec_integrity (string)    : (REQUIRED) The IPSec integrity algorithm. Valid options are 'GCMAES128', 'GCMAES192', 'GCMAES256', 'MD5', 'SHA1', or 'SHA256'.
#   pfs_group (string)          : (REQUIRED) The DH group used in IKE phase 2 for new child SA. Valid options are 'ECP256', 'ECP384', 'PFS1', 'PFS14', 'PFS2', 'PFS2048', 'PFS24', 'PFSMM', or 'None'.
#   sa_datasize (string)        : The IPSec SA payload size in KB. Must be at least '1024' KB. Defaults to '102400000' KB.
#   sa_lifetime (string)        : The IPSec SA lifetime in seconds. Must be at least '300' seconds. Defaults to '27000' seconds.


variable "traffic_selector_policy" {
  description = "One or more 'traffic_selector_policy' blocks which are documented below. A 'traffic_selector_policy' allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection. For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps)."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
