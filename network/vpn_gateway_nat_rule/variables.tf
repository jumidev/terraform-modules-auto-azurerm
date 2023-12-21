# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group in which this VPN Gateway NAT Rule should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "vpn_gateway_id" {
  description = "(REQUIRED) The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "external_mapping" {
  description = "One or more 'external_mapping' blocks."
  type        = string
  default     = null
}
variable "internal_mapping" {
  description = "One or more 'internal_mapping' blocks."
  type        = string
  default     = null
}
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
variable "external_address_space_mappings" {
  description = "(Deprecated) A list of CIDR Ranges which are used for external mapping of the VPN Gateway NAT Rule."
  type        = list(any)
  default     = []
}
variable "internal_address_space_mappings" {
  description = "(Deprecated) A list of CIDR Ranges which are used for internal mapping of the VPN Gateway NAT Rule."
  type        = list(any)
  default     = []
}
