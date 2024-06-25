# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "vpn_gateway_id" {
  description = "(REQUIRED) The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "external_mappings" {
  description = "One of more 'external_mapping' blocks."
  type        = map(map(any))
  default     = null
}
#
# external_mapping block structure:
#   address_space (string)          : (REQUIRED) The string CIDR representing the address space for the VPN Gateway Nat Rule external mapping.
#   port_range (string)             : The single port range for the VPN Gateway Nat Rule external mapping.


variable "internal_mappings" {
  description = "One of more 'internal_mapping' blocks."
  type        = map(map(any))
  default     = null
}
#
# internal_mapping block structure:
#   address_space (string)          : (REQUIRED) The string CIDR representing the address space for the VPN Gateway Nat Rule internal mapping.
#   port_range (string)             : The single port range for the VPN Gateway Nat Rule internal mapping.


variable "ip_configuration_id" {
  description = "The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are 'Instance0' and 'Instance1'."
  type        = string
  default     = null
}
variable "mode" {
  description = "The source NAT direction of the VPN NAT. Possible values are 'EgressSnat' and 'IngressSnat'. Defaults to 'EgressSnat'. Changing this forces a new resource to be created."
  type        = string
  default     = "EgressSnat"
}
variable "type" {
  description = "The type of the VPN Gateway NAT Rule. Possible values are 'Dynamic' and 'Static'. Defaults to 'Static'. Changing this forces a new resource to be created."
  type        = string
  default     = "Static"
}
