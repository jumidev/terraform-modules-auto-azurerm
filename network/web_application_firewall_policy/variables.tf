# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the policy. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Resource location. Changing this forces a new resource to be created."
  type        = string

}
variable "managed_rules" {
  description = "(REQUIRED) A 'managed_rules' blocks."
  type        = map(map(any))
}
#
# managed_rules block structure:
#   exclusion (list)             : One or more 'exclusion' block defined below.
#   managed_rule_set (list)      : (REQUIRED) One or more 'managed_rule_set' block defined below.



# OPTIONAL VARIABLES

variable "custom_rules" {
  description = "One or more 'custom_rules' blocks."
  type        = map(map(any))
  default     = null
}
#
# custom_rules block structure :
#   enabled (bool)               : Describes if the policy is in enabled state or disabled state. Defaults to 'true'.
#   name (string)                : Gets name of the resource that is unique within a policy. This name can be used to access the resource.
#   priority (string)            : (REQUIRED) Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.
#   rule_type (string)           : (REQUIRED) Describes the type of rule. Possible values are 'MatchRule', 'RateLimitRule' and 'Invalid'.
#   match_conditions (block)     : (REQUIRED) One or more 'match_conditions' blocks.
#   action (string)              : (REQUIRED) Type of action. Possible values are 'Allow', 'Block' and 'Log'.
#   rate_limit_duration (string) : Specifies the duration at which the rate limit policy will be applied. Should be used with 'RateLimitRule' rule type. Possible values are 'FiveMins' and 'OneMin'.
#   rate_limit_threshold (string): Specifies the threshold value for the rate limit policy. Must be greater than or equal to 1 if provided.
#   group_rate_limit_by (string) : Specifies what grouping the rate limit will count requests by. Possible values are 'GeoLocation', 'ClientAddr' and 'None'.
#
# match_variables block structure:
#   variable_name (string)         : (REQUIRED) The name of the Match Variable. Possible values are 'RemoteAddr', 'RequestMethod', 'QueryString', 'PostArgs', 'RequestUri', 'RequestHeaders', 'RequestBody' and 'RequestCookies'.
#   selector (string)              : Describes field of the matchVariable collection
#
# match_conditions block structure:
#   match_variables (block)         : (REQUIRED) One or more 'match_variables' blocks.
#   match_values (list)             : A list of match values. This is **Required** when the 'operator' is not 'Any'.
#   operator (string)               : (REQUIRED) Describes operator to be matched. Possible values are 'Any', 'IPMatch', 'GeoMatch', 'Equal', 'Contains', 'LessThan', 'GreaterThan', 'LessThanOrEqual', 'GreaterThanOrEqual', 'BeginsWith', 'EndsWith' and 'Regex'.
#   negation_condition (string)     : Describes if this is negate condition or not
#   transforms (string)             : A list of transformations to do before the match is attempted. Possible values are 'HtmlEntityDecode', 'Lowercase', 'RemoveNulls', 'Trim', 'UrlDecode' and 'UrlEncode'.


variable "policy_settings" {
  description = "A 'policy_settings' block."
  type        = map(any)
  default     = null
}
#
# policy_settings block structure          :
#   enabled (bool)                           : Describes if the policy is in enabled state or disabled state. Defaults to 'true'.
#   mode (string)                            : Describes if it is in detection mode or prevention mode at the policy level. Valid values are 'Detection' and 'Prevention'. Defaults to 'Prevention'.
#   file_upload_limit_in_mb (number)         : The File Upload Limit in MB. Accepted values are in the range '1' to '4000'. Defaults to '100'.
#   request_body_check (bool)                : Is Request Body Inspection enabled? Defaults to 'true'.
#   max_request_body_size_in_kb (string)     : The Maximum Request Body Size in KB. Accepted values are in the range '8' to '2000'. Defaults to '128'.
#   log_scrubbing (block)                    : One 'log_scrubbing' block.
#   request_body_inspect_limit_in_kb (string): Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to '128'.
#
# log_scrubbing block structure:
#   enabled (bool)               : Whether the log scrubbing is enabled or disabled. Defaults to 'true'.
#   rule (list)                  : One or more 'scrubbing_rule' blocks as define below.


variable "tags" {
  description = "A mapping of tags to assign to the Web Application Firewall Policy."
  type        = map(any)
  default     = null
}
