# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created."
  type        = string

}
variable "azure_firewall_name" {
  description = "(REQUIRED) Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) Specifies the priority of the rule collection. Possible values are between '100' - '65000'."
  type        = string

}
variable "action" {
  description = "(REQUIRED) Specifies the action the rule will apply to matching traffic. Possible values are 'Dnat' and 'Snat'."
  type        = string

}
variable "rule" {
  description = "(REQUIRED) One or more 'rule' blocks."
  type        = map(map(any))
}
#
# rule block structure        :
#   description (string)        : Specifies a description for the rule.
#   destination_addresses (list): (REQUIRED) A list of destination IP addresses and/or IP ranges.
#   destination_ports (list)    : (REQUIRED) A list of destination ports.
#   protocols (string)          : (REQUIRED) A list of protocols. Possible values are 'Any', 'ICMP', 'TCP' and 'UDP'. If 'action' is 'Dnat', protocols can only be 'TCP' and 'UDP'.
#   source_addresses (list)     : A list of source IP addresses and/or IP ranges.
#   source_ip_groups (list)     : A list of source IP Group IDs for the rule.
#   translated_address (string) : (REQUIRED) The address of the service behind the Firewall.
#   translated_port (string)    : (REQUIRED) The port of the service behind the Firewall.



# OPTIONAL VARIABLES

variable "firewall_resource_group_name" {
  description = "The name of the Resource Group in which the Azure Firewall exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
