# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created."
  type        = string

}
variable "firewall_policy_id" {
  description = "(REQUIRED) The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) The priority of the Firewall Policy Rule Collection Group. The range is 100-65000."
  type        = string

}

# OPTIONAL VARIABLES

variable "application_rule_collection" {
  description = "One or more 'application_rule_collection' blocks."
  type        = map(map(any))
  default     = null
}
#
# application_rule_collection block structure:
#   action (string)                            : (REQUIRED) The action to take for the application rules in this collection. Possible values are 'Allow' and 'Deny'.
#   priority (string)                          : (REQUIRED) The priority of the application rule collection. The range is '100' - '65000'.
#   rule (block)                               : (REQUIRED) One or more 'application_rule' blocks.
#
# protocols block structure:
#   type (string)            : (REQUIRED) Protocol type. Possible values are 'Http' and 'Https'.
#   port (int)               : (REQUIRED) Port number of the protocol. Range is 0-64000.
#
# application_rule block structure:
#   description (string)            : The description which should be used for this rule.
#   protocols (block)               : One or more 'protocols' blocks.
#   http_headers (block)            : (REQUIRED) Specifies a list of HTTP/HTTPS headers to insert. One or more 'http_headers' blocks.
#   source_addresses (string)       : Specifies a list of source IP addresses (including CIDR, IP range and '*').
#   source_ip_groups (string)       : Specifies a list of source IP groups.
#   destination_addresses (string)  : Specifies a list of destination IP addresses (including CIDR, IP range and '*').
#   destination_urls (string)       : Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with 'destination_fqdns'.
#   destination_fqdns (string)      : Specifies a list of destination FQDNs. Conflicts with 'destination_urls'.
#   destination_fqdn_tags (map)     : Specifies a list of destination FQDN tags.
#   terminate_tls (string)          : Boolean specifying if TLS shall be terminated (true) or not (false). Must be 'true' when using 'destination_urls'. Needs Premium SKU for Firewall Policy.
#   web_categories (string)         : Specifies a list of web categories to which access is denied or allowed depending on the value of 'action' above. Needs Premium SKU for Firewall Policy.
#
# http_headers block structure:
#   value (string)              : (REQUIRED) Specifies the value of the value.


variable "nat_rule_collection" {
  description = "One or more 'nat_rule_collection' blocks."
  type        = map(map(any))
  default     = null
}
#
# nat_rule_collection block structure:
#   action (string)                    : (REQUIRED) The action to take for the NAT rules in this collection. Currently, the only possible value is 'Dnat'.
#   priority (string)                  : (REQUIRED) The priority of the NAT rule collection. The range is '100' - '65000'.
#   rule (block)                       : (REQUIRED) A 'nat_rule' block.
#
# nat_rule block structure    :
#   description (string)        : The description which should be used for this rule.
#   protocols (string)          : (REQUIRED) Specifies a list of network protocols this rule applies to. Possible values are 'TCP', 'UDP'.
#   source_addresses (string)   : Specifies a list of source IP addresses (including CIDR, IP range and '*').
#   source_ip_groups (string)   : Specifies a list of source IP groups.
#   destination_address (string): The destination IP address (including CIDR).
#   destination_ports (string)  : Specifies a list of destination ports. Only one destination port is supported in a NAT rule.
#   translated_address (string) : Specifies the translated address.
#   translated_fqdn (string)    : Specifies the translated FQDN.
#   translated_port (string)    : (REQUIRED) Specifies the translated port.


variable "network_rule_collection" {
  description = "One or more 'network_rule_collection' blocks."
  type        = map(map(any))
  default     = null
}
#
# network_rule_collection block structure:
#   action (string)                        : (REQUIRED) The action to take for the network rules in this collection. Possible values are 'Allow' and 'Deny'.
#   priority (string)                      : (REQUIRED) The priority of the network rule collection. The range is '100' - '65000'.
#   rule (block)                           : (REQUIRED) One or more 'network_rule' blocks.
#
# network_rule block structure  :
#   description (string)          : The description which should be used for this rule.
#   protocols (string)            : (REQUIRED) Specifies a list of network protocols this rule applies to. Possible values are 'Any', 'TCP', 'UDP', 'ICMP'.
#   destination_ports (string)    : (REQUIRED) Specifies a list of destination ports.
#   source_addresses (string)     : Specifies a list of source IP addresses (including CIDR, IP range and '*').
#   source_ip_groups (string)     : Specifies a list of source IP groups.
#   destination_addresses (string): Specifies a list of destination IP addresses (including CIDR, IP range and '*') or Service Tags.
#   destination_ip_groups (string): Specifies a list of destination IP groups.
#   destination_fqdns (string)    : Specifies a list of destination FQDNs.


