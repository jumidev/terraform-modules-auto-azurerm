# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Is the policy a enabled state or disabled state. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "mode" {
  description = "The firewall policy mode. Possible values are 'Detection', 'Prevention'. Defaults to 'Prevention'."
  type        = string
  default     = "Prevention"
}
variable "redirect_url" {
  description = "If action type is redirect, this field represents redirect URL for the client."
  type        = string
  default     = null
}
variable "custom_rule" {
  description = "One or more 'custom_rule' blocks."
  type        = map(map(any))
  default     = null
}
#
# custom_rule block structure         :
#   name (string)                       : (REQUIRED) Gets name of the resource that is unique within a policy. This name can be used to access the resource.
#   action (string)                     : (REQUIRED) The action to perform when the rule is matched. Possible values are 'Allow', 'Block', 'Log', or 'Redirect'.
#   enabled (bool)                      : Is the rule is enabled or disabled? Defaults to 'true'.
#   priority (string)                   : The priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. Defaults to '1'.
#   type (string)                       : (REQUIRED) The type of rule. Possible values are 'MatchRule' or 'RateLimitRule'.
#   match_condition (list)              : One or more 'match_condition' block defined below. Can support up to '10' 'match_condition' blocks.
#   rate_limit_duration_in_minutes (int): The rate limit duration in minutes. Defaults to '1'.
#   rate_limit_threshold (string)       : The rate limit threshold. Defaults to '10'.


variable "custom_block_response_status_code" {
  description = "If a 'custom_rule' block's action type is 'block', this is the response status code. Possible values are '200', '403', '405', '406', or '429'."
  type        = string
  default     = null
}
variable "custom_block_response_body" {
  description = "If a 'custom_rule' block's action type is 'block', this is the response body. The body must be specified in base64 encoding."
  type        = string
  default     = null
}
variable "managed_rule" {
  description = "One or more 'managed_rule' blocks."
  type        = map(map(any))
  default     = null
}
#
# managed_rule block structure:
#   type (string)               : (REQUIRED) The name of the managed rule to use with this resource.
#   version (string)            : (REQUIRED) The version on the managed rule to use with this resource.
#   exclusion (block)           : One or more 'exclusion' blocks.
#   override (block)            : One or more 'override' blocks.
#
# exclusion block structure:
#   match_variable (string)  : (REQUIRED) The variable type to be excluded. Possible values are 'QueryStringArgNames', 'RequestBodyPostArgNames', 'RequestCookieNames', 'RequestHeaderNames'.
#   operator (string)        : (REQUIRED) Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: 'Equals', 'Contains', 'StartsWith', 'EndsWith', 'EqualsAny'.
#   selector (string)        : (REQUIRED) Selector for the value in the 'match_variable' attribute this exclusion applies to.
#
# rule block structure:
#   rule_id (string)    : (REQUIRED) Identifier for the managed rule.
#   action (string)     : (REQUIRED) The action to be applied when the rule matches. Possible values are 'Allow', 'Block', 'Log', or 'Redirect'.
#   enabled (bool)      : Is the managed rule override enabled or disabled. Defaults to 'false'
#   exclusion (block)   : One or more 'exclusion' blocks.
#
# override block structure:
#   rule_group_name (string): (REQUIRED) The managed rule group to override.
#   exclusion (block)       : One or more 'exclusion' blocks.
#   rule (block)            : One or more 'rule' blocks. If none are specified, all of the rules in the group will be disabled.


variable "tags" {
  description = "A mapping of tags to assign to the Web Application Firewall Policy."
  type        = map(any)
  default     = null
}
