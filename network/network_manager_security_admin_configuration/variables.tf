# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created."
  type        = string

}
variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Security Admin Configuration to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "apply_on_network_intent_policy_based_services" {
  description = "A list of network intent policy based services. Possible values are 'All', 'None' and 'AllowRulesOnly'. Exactly one value should be set. The 'All' option requires 'Microsoft.Network/AllowAdminRulesOnNipBasedServices' feature registration to Subscription. Please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#network-intent-policies-and-security-admin-rules) for more information."
  type        = string
  default     = null
}
variable "description" {
  description = "A description of the Security Admin Configuration."
  type        = string
  default     = null
}
