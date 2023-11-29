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
  type        = map(any)
  default     = null
}
#
# bgp_settings block structure:
#   asn (string)                : The Autonomous System Number (ASN) to use as part of the BGP.
#   peering_addresses (block)   : A list of 'peering_addresses' blocks. Only one 'peering_addresses' block can be specified except when 'active_active' of this Virtual Network Gateway is 'true'.
#   peer_weight (string)        : The weight added to routes which have been learned through BGP peering. Valid values can be between '0' and '100'.
#
# peering_addresses block structure:
#   ip_configuration_name (string)   : The name of the IP configuration of this Virtual Network Gateway. In case there are multiple 'ip_configuration' blocks defined, this property is **required** to specify.
#   apipa_addresses (list)           : A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.


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
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "vpn_client_configuration" {
  description = "A 'vpn_client_configuration' block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections."
  type        = map(any)
  default     = null
}
#
# vpn_client_configuration block structure:
#   address_space (string)                  : (REQUIRED) The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
#   aad_tenant (string)                     : AzureAD Tenant URL
#   aad_audience (string)                   : The client id of the Azure VPN application. See [Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections](https://docs.microsoft.com/en-gb/azure/vpn-gateway/openvpn-azure-ad-tenant-multi-app) for values
#   aad_issuer (string)                     : The STS url for your tenant
#   root_certificate (list)                 : One or more 'root_certificate' blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
#   revoked_certificate (list)              : One or more 'revoked_certificate' blocks which are defined below.
#   radius_server_address (string)          : The address of the Radius server.
#   radius_server_secret (string)           : The secret used by the Radius server.
#   vpn_client_protocols (string)           : List of the protocols supported by the vpn client. The supported values are 'SSTP', 'IkeV2' and 'OpenVPN'. Values 'SSTP' and 'IkeV2' are incompatible with the use of 'aad_tenant', 'aad_audience' and 'aad_issuer'.
#   vpn_auth_types (string)                 : List of the vpn authentication types for the virtual network gateway. The supported values are 'AAD', 'Radius' and 'Certificate'.


variable "vpn_type" {
  description = "The routing type of the Virtual Network Gateway. Valid options are 'RouteBased' or 'PolicyBased'. Defaults to 'RouteBased'. Changing this forces a new resource to be created."
  type        = string
  default     = "RouteBased"
}
