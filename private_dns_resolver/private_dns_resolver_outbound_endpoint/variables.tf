# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created."
  type        = string

}
variable "private_dns_resolver_id" {
  description = "(REQUIRED) Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint."
  type        = map(any)
  default     = null
}
