# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created."
  type        = string

}
variable "virtual_wan_id" {
  description = "(REQUIRED) The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "link" {
  description = "One or more 'link' blocks."
  type        = map(map(any))
  default     = null
}
#
# link block structure  :
#   name (string)         : (REQUIRED) The name which should be used for this VPN Site Link.
#   bgp (block)           : A 'bgp' block.
#   fqdn (string)         : The FQDN of this VPN Site Link.
#   ip_address (string)   : The IP address of this VPN Site Link.
#   provider_name (string): The name of the physical link at the VPN Site. Example: 'ATT', 'Verizon'.
#   speed_in_mbps (int)   : The speed of the VPN device at the branch location in unit of mbps. Defaults to '0'.
#
# bgp block structure     :
#   asn (string)            : (REQUIRED) The BGP speaker's ASN.
#   peering_address (string): (REQUIRED) The BGP peering IP address.


variable "address_cidrs" {
  description = "Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site."
  type        = string
  default     = null
}
variable "device_model" {
  description = "The model of the VPN device."
  type        = string
  default     = null
}
variable "device_vendor" {
  description = "The name of the VPN device vendor."
  type        = string
  default     = null
}
variable "o365_policy" {
  description = "An 'o365_policy' block."
  type        = map(any)
  default     = null
}
#
# o365_policy block structure:
#   traffic_category (block)   : A 'traffic_category' block.
#
# traffic_category block structure:
#   allow_endpoint_enabled (bool)   : Is allow endpoint enabled? The 'Allow' endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to 'false'.
#   default_endpoint_enabled (bool) : Is default endpoint enabled? The 'Default' endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to 'false'.
#   optimize_endpoint_enabled (bool): Is optimize endpoint enabled? The 'Optimize' endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to 'false'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the VPN Site."
  type        = map(any)
  default     = null
}
