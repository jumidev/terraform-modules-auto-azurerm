# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the ExpressRoute circuit. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block for the ExpressRoute circuit as documented below."
  type        = map(any)
}
#
# sku block structure:
#   tier (string)      : (REQUIRED) The service tier. Possible values are 'Basic', 'Local', 'Standard' or 'Premium'.
#   family (string)    : (REQUIRED) The billing mode for bandwidth. Possible values are 'MeteredData' or 'UnlimitedData'.



# OPTIONAL VARIABLES

variable "service_provider_name" {
  description = "The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "peering_location" {
  description = "The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "bandwidth_in_mbps" {
  description = "The bandwidth in Mbps of the circuit being created on the Service Provider."
  type        = number
  default     = null
}
variable "allow_classic_operations" {
  description = "Allow the circuit to interact with classic (RDFE) resources. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "express_route_port_id" {
  description = "The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "bandwidth_in_gbps" {
  description = "The bandwidth in Gbps of the circuit being created on the Express Route Port."
  type        = number
  default     = null
}
variable "authorization_key" {
  description = "The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
