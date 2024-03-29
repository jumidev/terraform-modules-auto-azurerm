# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created."
  type        = string

}
variable "peering_id" {
  description = "(REQUIRED) The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created."
  type        = string

}
variable "peer_peering_id" {
  description = "(REQUIRED) The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created."
  type        = string

}
variable "address_prefix_ipv4" {
  description = "(REQUIRED) The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authorization_key" {
  description = "The authorization key which is associated with the Express Route Circuit Connection."
  type        = string
  default     = null
}
variable "address_prefix_ipv6" {
  description = "The IPv6 address space from which to allocate customer addresses for global reach. -> **NOTE:** 'address_prefix_ipv6' cannot be set when ExpressRoute Circuit Connection with ExpressRoute Circuit based on ExpressRoute Port."
  type        = string
  default     = null
}
