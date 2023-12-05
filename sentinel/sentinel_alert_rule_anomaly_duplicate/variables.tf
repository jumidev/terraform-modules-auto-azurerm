# REQUIRED VARIABLES

variable "display_name" {
  description = "(REQUIRED) The Display Name of the built-in Anomaly Alert Rule."
  type        = string

}
variable "built_in_rule_id" {
  description = "(REQUIRED) The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Should the Duplicated Anomaly Alert Rule be enabled?"
  type        = bool

}
variable "mode" {
  description = "(REQUIRED) mode of the Duplicated Anomaly Alert Rule. Possible Values are 'Production' and 'Flighting'."
  type        = string

}

# OPTIONAL VARIABLES

variable "multi_select_observation" {
  description = "A list of 'multi_select_observation' blocks."
  type        = map(map(any))
  default     = null
}
#
# multi_select_observation block structure:
#   name (string)                           : (REQUIRED) The name of the multi select observation.
#   description (string)                    : The description of the multi select observation.
#   supported_values (list)                 : A list of supported values of the multi select observation.
#   values (list)                           : (REQUIRED) A list of values of the multi select observation.


variable "single_select_observation" {
  description = "A list of 'single_select_observation' blocks."
  type        = map(map(any))
  default     = null
}
#
# single_select_observation block structure:
#   name (string)                            : (REQUIRED) The name of the single select observation.
#   description (string)                     : The description of the single select observation.
#   supported_values (list)                  : A list of supported values of the single select observation.
#   value (string)                           : (REQUIRED) The value of the multi select observation.


variable "prioritized_exclude_observation" {
  description = "A list of 'prioritized_exclude_observation' blocks."
  type        = map(map(any))
  default     = null
}
#
# prioritized_exclude_observation block structure:
#   name (string)                                  : (REQUIRED) The name of the prioritized exclude observation.
#   description (string)                           : The description of the prioritized exclude observation.
#   prioritize (string)                            : The prioritized value per 'description'.
#   exclude (string)                               : The excluded value per 'description'.


variable "threshold_observation" {
  description = "A list of 'threshold_observation' blocks."
  type        = map(map(any))
  default     = null
}
#
# threshold_observation block structure:
#   name (string)                        : (REQUIRED) The name of the threshold observation.
#   description (string)                 : The description of the threshold observation.
#   max (string)                         : The max value of the threshold observation.
#   min (string)                         : The min value of the threshold observation.
#   value (string)                       : (REQUIRED) The value of the threshold observation.


