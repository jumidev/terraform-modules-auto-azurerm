# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the network security group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the network security group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "security_rule" {
  description = "List of 'security_rule' objects representing security rules, as defined below. -> **NOTE** Since 'security_rule' can be configured both inline and via the separate 'azurerm_network_security_rule' resource, we have to explicitly set it to empty slice ('[]') to remove it."
  type        = map(map(any))
  default     = null
}
#
# security_rule block structure                    :
#   name (string)                                    : (REQUIRED) The name of the security rule.
#   description (string)                             : A description for this rule. Restricted to 140 characters.
#   protocol (string)                                : (REQUIRED) Network protocol this rule applies to. Possible values include 'Tcp', 'Udp', 'Icmp', 'Esp', 'Ah' or '*' (which matches all).
#   source_port_range (string)                       : Source Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'source_port_ranges' is not specified.
#   destination_port_range (string)                  : Destination Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'destination_port_ranges' is not specified.
#   source_address_prefix (string)                   : CIDR or source IP range or * to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. This is required if 'source_address_prefixes' is not specified.
#   source_application_security_group_ids (list)     : A List of source Application Security Group IDs
#   destination_address_prefix (string)              : CIDR or destination IP range or * to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. This is required if 'destination_address_prefixes' is not specified.
#   destination_application_security_group_ids (list): A List of destination Application Security Group IDs
#   access (string)                                  : (REQUIRED) Specifies whether network traffic is allowed or denied. Possible values are 'Allow' and 'Deny'.
#   priority (string)                                : (REQUIRED) Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
#   direction (string)                               : (REQUIRED) The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are 'Inbound' and 'Outbound'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
# REQUIRED VARIABLES

variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet. Changing this forces a new resource to be created."
  type        = string

}
# REQUIRED VARIABLES

variable "network_interface_id" {
  description = "(REQUIRED) The ID of the Network Interface. Changing this forces a new resource to be created."
  type        = string

}
