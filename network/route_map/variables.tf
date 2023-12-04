# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Route Map. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The resource ID of the Virtual Hub. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "rule" {
  description = "A 'rule' block."
  type        = map(any)
  default     = null
}
#
# rule block structure         :
#   action (block)               : An 'action' block.
#   match_criterion (block)      : A 'match_criterion' block.
#   next_step_if_matched (string): The next step after the rule is evaluated. Possible values are 'Continue', 'Terminate' and 'Unknown'. Defaults to 'Unknown'.
#
# match_criterion block structure:
#   match_condition (string)       : (REQUIRED) The match condition to apply the rule of the Route Map. Possible values are 'Contains', 'Equals', 'NotContains', 'NotEquals' and 'Unknown'.
#   as_path (list)                 : A list of AS paths which this criterion matches.
#   community (list)               : A list of BGP communities which this criterion matches.
#   route_prefix (list)            : A list of route prefixes which this criterion matches.
#
# parameter block structure:
#   as_path (list)           : A list of AS paths.
#   community (list)         : A list of BGP communities.
#   route_prefix (list)      : A list of route prefixes.
#
# action block structure:
#   parameter (block)     : (REQUIRED) A 'parameter' block.
#   type (string)         : (REQUIRED) The type of the action to be taken. Possible values are 'Add', 'Drop', 'Remove', 'Replace' and 'Unknown'.


