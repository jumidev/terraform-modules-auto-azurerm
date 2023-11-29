# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created."
  type        = string

}
variable "private_dns_resolver_id" {
  description = "(REQUIRED) Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created."
  type        = string

}
variable "ip_configurations" {
  description = "(REQUIRED) Can be specified multiple times to define multiple IP configurations. Each 'ip_configurations' block."
  type        = map(any)
}
#
# ip_configurations block structure    :
#   private_ip_allocation_method (string): Private IP address allocation method. Allowed value is 'Dynamic'. Defaults to 'Dynamic'.
#   subnet_id (string)                   : (REQUIRED) The subnet ID of the IP configuration.


variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint."
  type        = map(any)
  default     = null
}
