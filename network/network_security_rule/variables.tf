# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "network_security_group_name" {
  description = "(REQUIRED) The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created."
  type        = string

}
variable "protocol" {
  description = "(REQUIRED) Network protocol this rule applies to. Possible values include 'Tcp', 'Udp', 'Icmp', 'Esp', 'Ah' or '*' (which matches all)."
  type        = string

}
variable "access" {
  description = "(REQUIRED) Specifies whether network traffic is allowed or denied. Possible values are 'Allow' and 'Deny'."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule."
  type        = string

}
variable "direction" {
  description = "(REQUIRED) The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are 'Inbound' and 'Outbound'."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for this rule. Restricted to 140 characters."
  type        = string
  default     = null
}
variable "source_port_range" {
  description = "Source Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'source_port_ranges' is not specified."
  type        = string
  default     = null
}
variable "source_port_ranges" {
  description = "List of source ports or port ranges. This is required if 'source_port_range' is not specified."
  type        = string
  default     = null
}
variable "destination_port_range" {
  description = "Destination Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'destination_port_ranges' is not specified."
  type        = string
  default     = null
}
variable "destination_port_ranges" {
  description = "List of destination ports or port ranges. This is required if 'destination_port_range' is not specified."
  type        = string
  default     = null
}
variable "source_address_prefix" {
  description = "CIDR or source IP range or * to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. This is required if 'source_address_prefixes' is not specified."
  type        = string
  default     = null
}
variable "source_address_prefixes" {
  description = "List of source address prefixes. Tags may not be used. This is required if 'source_address_prefix' is not specified."
  type        = string
  default     = null
}
variable "source_application_security_group_ids" {
  description = "A List of source Application Security Group IDs"
  type        = list(any)
  default     = []
}
variable "destination_address_prefix" {
  description = "CIDR or destination IP range or * to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: '''shell az network list-service-tags --location westcentralus'''. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags). This is required if 'destination_address_prefixes' is not specified."
  type        = string
  default     = null
}
variable "destination_address_prefixes" {
  description = "List of destination address prefixes. Tags may not be used. This is required if 'destination_address_prefix' is not specified."
  type        = string
  default     = null
}
variable "destination_application_security_group_ids" {
  description = "A List of destination Application Security Group IDs"
  type        = list(any)
  default     = []
}
variable "network_security_group_resource_group_name" {
  description = "Specifies the Name of the Resource Group within which the Network Security Group exists.  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
