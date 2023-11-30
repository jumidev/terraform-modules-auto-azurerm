# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the subnet. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_network_name" {
  description = "(REQUIRED) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string

}
variable "address_prefixes" {
  description = "(REQUIRED) The address prefixes to use for the subnet."
  type        = string

}

# OPTIONAL VARIABLES

variable "delegation" {
  description = "One or more 'delegation' blocks."
  type        = map(map(any))
  default     = null
}
#
# delegation block structure:
#   service_delegation (block): (REQUIRED) A 'service_delegation' block.
#
# service_delegation block structure:
#   actions (string)                  : A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are 'Microsoft.Network/networkinterfaces/*', 'Microsoft.Network/publicIPAddresses/join/action', 'Microsoft.Network/publicIPAddresses/read', 'Microsoft.Network/virtualNetworks/read', 'Microsoft.Network/virtualNetworks/subnets/action', 'Microsoft.Network/virtualNetworks/subnets/join/action', 'Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action', and 'Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action'.


variable "private_endpoint_network_policies_enabled" {
  description = "Enable or Disable network policies for the private endpoint on the subnet. Setting this to 'true' will **Enable** the policy and setting this to 'false' will **Disable** the policy. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "private_link_service_network_policies_enabled" {
  description = "Enable or Disable network policies for the private link service on the subnet. Setting this to 'true' will **Enable** the policy and setting this to 'false' will **Disable** the policy. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet. Possible values include: 'Microsoft.AzureActiveDirectory', 'Microsoft.AzureCosmosDB', 'Microsoft.ContainerRegistry', 'Microsoft.EventHub', 'Microsoft.KeyVault', 'Microsoft.ServiceBus', 'Microsoft.Sql', 'Microsoft.Storage', 'Microsoft.Storage.Global' and 'Microsoft.Web'."
  type        = string
  default     = null
}
variable "service_endpoint_policy_ids" {
  description = "The list of IDs of Service Endpoint Policies to associate with the subnet."
  type        = string
  default     = null
}
variable "virtual_network_resource_group_name" {
  description = "Specifies the name of the resource group the Virtual Network is located in..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
