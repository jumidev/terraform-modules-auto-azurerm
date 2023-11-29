# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the local network gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the local network gateway is created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "address_space" {
  description = "The list of string CIDRs representing the address spaces the gateway exposes."
  type        = string
  default     = null
}
variable "bgp_settings" {
  description = "A 'bgp_settings' block containing the Local Network Gateway's BGP speaker settings."
  type        = map(any)
  default     = null
}
#
# bgp_settings block structure:
#   asn (string)                : (REQUIRED) The BGP speaker's ASN.
#   bgp_peering_address (string): (REQUIRED) The BGP peering address and BGP identifier of this BGP speaker.
#   peer_weight (string)        : The weight added to routes learned from this BGP speaker.


variable "gateway_address" {
  description = "The gateway IP address to connect with."
  type        = string
  default     = null
}
variable "gateway_fqdn" {
  description = "The gateway FQDN to connect with."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
