# REQUIRED VARIABLES

variable "backend_address_pool_id" {
  description = "(REQUIRED) The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "ip_address" {
  description = "The Static IP Address which should be allocated to this Backend Address Pool."
  type        = string
  default     = null
}
variable "virtual_network_id" {
  description = "The ID of the Virtual Network within which the Backend Address Pool should exist."
  type        = string
  default     = null
}
variable "backend_address_ip_configuration_id" {
  description = "The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool. -> **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2."
  type        = string
  default     = null
}
