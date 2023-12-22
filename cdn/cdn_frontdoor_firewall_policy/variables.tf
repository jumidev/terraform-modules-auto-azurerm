# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The sku's pricing tier for this Front Door Firewall Policy. Possible values include 'Standard_AzureFrontDoor' or 'Premium_AzureFrontDoor'. Changing this forces a new resource to be created."
  type        = string

}
variable "mode" {
  description = "(REQUIRED) The Front Door Firewall Policy mode. Possible values are 'Detection', 'Prevention'."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Is the Front Door Firewall Policy enabled? Defaults to 'true'."
  type        = bool
  default     = true
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
# custom_rule block structure            :
#   name (string)                          : (REQUIRED) Gets name of the resource that is unique within a policy. This name can be used to access the resource.
#   action (string)                        : (REQUIRED) The action to perform when the rule is matched. Possible values are 'Allow', 'Block', 'Log', or 'Redirect'.
#   enabled (bool)                         : Is the rule is enabled or disabled? Defaults to 'true'.
#   priority (string)                      : The priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. Defaults to '1'.
#   type (string)                          : (REQUIRED) The type of rule. Possible values are 'MatchRule' or 'RateLimitRule'.
#   match_condition (string)               : One or more 'match_condition' block defined below. Can support up to '10' 'match_condition' blocks.
#   rate_limit_duration_in_minutes (number): The rate limit duration in minutes. Defaults to '1'.
#   rate_limit_threshold (string)          : The rate limit threshold. Defaults to '10'.


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
#   type (string)               : (REQUIRED) The name of the managed rule to use with this resource. Possible values include 'DefaultRuleSet', 'Microsoft_DefaultRuleSet', 'BotProtection' or 'Microsoft_BotManagerRuleSet'.
#   version (string)            : (REQUIRED) The version of the managed rule to use with this resource. Possible values depends on which DRS type you are using, for the 'DefaultRuleSet' type the possible values include '1.0' or 'preview-0.1'. For 'Microsoft_DefaultRuleSet' the possible values include '1.1', '2.0' or '2.1'. For 'BotProtection' the value must be 'preview-0.1' and for 'Microsoft_BotManagerRuleSet' the value must be '1.0'.
#   action (string)             : (REQUIRED) The action to perform for all DRS rules when the managed rule is matched or when the anomaly score is 5 or greater depending on which version of the DRS you are using. Possible values include 'Allow', 'Log', 'Block', and 'Redirect'.
#   exclusion (block)           : One or more 'exclusion' blocks.
#   override (block)            : One or more 'override' blocks.
#
# rule block structure:
#   rule_id (string)    : (REQUIRED) Identifier for the managed rule.
#   action (string)     : (REQUIRED) The action to be applied when the managed rule matches or when the anomaly score is 5 or greater. Possible values for DRS '1.1' and below are 'Allow', 'Log', 'Block', and 'Redirect'. For DRS '2.0' and above the possible values are 'Log' or 'AnomalyScoring'.
#   enabled (bool)      : Is the managed rule override enabled or disabled. Defaults to 'false'
#   exclusion (block)   : One or more 'exclusion' blocks.
#
# override block structure:
#   rule_group_name (string): (REQUIRED) The managed rule group to override.
#   exclusion (block)       : One or more 'exclusion' blocks.
#   rule (block)            : One or more 'rule' blocks. If none are specified, all of the rules in the group will be disabled.
#
# exclusion block structure:
#   match_variable (string)  : (REQUIRED) The variable type to be excluded. Possible values are 'QueryStringArgNames', 'RequestBodyPostArgNames', 'RequestCookieNames', 'RequestHeaderNames', 'RequestBodyJsonArgNames'
#   operator (string)        : (REQUIRED) Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: 'Equals', 'Contains', 'StartsWith', 'EndsWith', 'EqualsAny'.
#   selector (string)        : (REQUIRED) Selector for the value in the 'match_variable' attribute this exclusion applies to.


variable "tags" {
  description = "A mapping of tags to assign to the Front Door Firewall Policy."
  type        = map(any)
  default     = null
}
