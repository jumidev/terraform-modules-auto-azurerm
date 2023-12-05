# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The Name which should be used for this Route Filter."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "rule" {
  description = "A 'rule' block."
  type        = map(any)
  default     = null
}
#
# rule block structure:
#   access (string)     : (REQUIRED) The access type of the rule. The only possible value is 'Allow'.
#   communities (string): (REQUIRED) The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
#   name (string)       : (REQUIRED) The name of the route filter rule.
#   rule_type (string)  : (REQUIRED) The rule type of the rule. The only possible value is 'Community'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Route Filter."
  type        = map(any)
  default     = null
}
