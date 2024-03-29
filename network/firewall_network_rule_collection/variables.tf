# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created."
  type        = string

}
variable "azure_firewall_name" {
  description = "(REQUIRED) Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) Specifies the priority of the rule collection. Possible values are between '100' - '65000'."
  type        = number

}
variable "action" {
  description = "(REQUIRED) Specifies the action the rule will apply to matching traffic. Possible values are 'Allow' and 'Deny'."
  type        = string

}
variable "rule" {
  description = "(REQUIRED) One or more 'rule' blocks."
  type        = map(map(any))
}
#
# rule block structure        :
#   name (string)               : (REQUIRED) Specifies the name of the rule.
#   description (string)        : Specifies a description for the rule.
#   source_addresses (list)     : A list of source IP addresses and/or IP ranges.
#   source_ip_groups (list)     : A list of IP Group IDs for the rule. -> **NOTE** At least one of 'source_addresses' and 'source_ip_groups' must be specified for a rule.
#   destination_addresses (list): Either a list of destination IP addresses and/or IP ranges, or a list of destination [Service Tags](https://docs.microsoft.com/azure/virtual-network/service-tags-overview#available-service-tags).
#   destination_ip_groups (list): A list of destination IP Group IDs for the rule.
#   destination_fqdns (list)    : A list of destination FQDNS for the rule. -> **NOTE** [You must enable DNS Proxy to use FQDNs in your network rules](https://docs.microsoft.com/azure/firewall/fqdn-filtering-network-rules). -> **NOTE** At least one of 'destination_addresses', 'destination_ip_groups' and 'destination_fqdns' must be specified for a rule.
#   destination_ports (list)    : (REQUIRED) A list of destination ports.
#   protocols (list)            : (REQUIRED) A list of protocols. Possible values are 'Any', 'ICMP', 'TCP' and 'UDP'.



# OPTIONAL VARIABLES

variable "firewall_resource_group_name" {
  description = "The name of the Resource Group in which the Azure Firewall exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
