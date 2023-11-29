# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_network_gateway_id" {
  description = "(REQUIRED) The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created."
  type        = string

}
variable "external_mapping" {
  description = "(REQUIRED) One or more 'external_mapping' blocks."
  type        = list(any)

}
variable "internal_mapping" {
  description = "(REQUIRED) One or more 'internal_mapping' blocks."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "ip_configuration_id" {
  description = "The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to."
  type        = string
  default     = null
}
variable "mode" {
  description = "The source Nat direction of the Virtual Network Gateway Nat. Possible values are 'EgressSnat' and 'IngressSnat'. Defaults to 'EgressSnat'. Changing this forces a new resource to be created."
  type        = string
  default     = "EgressSnat"
}
variable "type" {
  description = "The type of the Virtual Network Gateway Nat Rule. Possible values are 'Dynamic' and 'Static'. Defaults to 'Static'. Changing this forces a new resource to be created."
  type        = string
  default     = "Static"
}
