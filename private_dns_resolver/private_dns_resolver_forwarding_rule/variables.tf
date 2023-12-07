# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created."
  type        = string

}
variable "dns_forwarding_ruleset_id" {
  description = "(REQUIRED) Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created."
  type        = string

}
variable "domain_name" {
  description = "(REQUIRED) Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created."
  type        = string

}
variable "target_dns_servers" {
  description = "(REQUIRED) Can be specified multiple times to define multiple target DNS servers. Each 'target_dns_servers' block."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "metadata" {
  description = "Metadata attached to the Private DNS Resolver Forwarding Rule."
  type        = string
  default     = null
}
