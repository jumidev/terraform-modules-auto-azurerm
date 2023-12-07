# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created."
  type        = string

}
variable "admin_rule_collection_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created."
  type        = string

}
variable "action" {
  description = "(REQUIRED) Specifies the action allowed for this Network Manager Admin Rule. Possible values are 'Allow', 'AlwaysAllow', and 'Deny'."
  type        = string

}
variable "direction" {
  description = "(REQUIRED) Indicates if the traffic matched against the rule in inbound or outbound. Possible values are 'Inbound' and 'Outbound'."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) The priority of the rule. Possible values are integers between '1' and '4096'. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule."
  type        = string

}
variable "protocol" {
  description = "(REQUIRED) Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are 'Ah', 'Any', 'Esp', 'Icmp', 'Tcp', and 'Udp'."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Network Manager Admin Rule."
  type        = string
  default     = null
}
variable "destination_port_ranges" {
  description = "A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as '1024-65535'. Use '*' to specify any port."
  type        = string
  default     = null
}
variable "destination" {
  description = "One or more 'destination' blocks."
  type        = map(map(any))
  default     = null
}
#
# destination block structure :
#   address_prefix (string)     : (REQUIRED) Specifies the address prefix.
#   address_prefix_type (string): (REQUIRED) Specifies the address prefix type. Possible values are 'IPPrefix' and 'ServiceTag'. For more information, please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#source-and-destination-types).


variable "source_port_ranges" {
  description = "A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as '1024-65535'. Use '*' to specify any port."
  type        = string
  default     = null
}
variable "source" {
  description = "One or more 'source' blocks."
  type        = map(map(any))
  default     = null
}
#
# source block structure      :
#   address_prefix (string)     : (REQUIRED) Specifies the address prefix.
#   address_prefix_type (string): (REQUIRED) Specifies the address prefix type. Possible values are 'IPPrefix' and 'ServiceTag'. For more information, please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#source-and-destination-types).


