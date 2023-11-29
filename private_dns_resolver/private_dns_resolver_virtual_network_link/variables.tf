# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created."
  type        = string

}
variable "dns_forwarding_ruleset_id" {
  description = "(REQUIRED) Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created."
  type        = string

}
variable "virtual_network_id" {
  description = "(REQUIRED) The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "metadata" {
  description = "Metadata attached to the Private DNS Resolver Virtual Network Link."
  type        = string
  default     = null
}
