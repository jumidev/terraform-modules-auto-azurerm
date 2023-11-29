# REQUIRED VARIABLES

variable "virtual_network_id" {
  description = "(REQUIRED) The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = string
  default     = null
}
