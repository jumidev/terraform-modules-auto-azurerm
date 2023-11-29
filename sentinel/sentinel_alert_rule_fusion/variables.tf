# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created."
  type        = string

}
variable "alert_rule_template_guid" {
  description = "(REQUIRED) The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Should this Sentinel Fusion Alert Rule be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "source" {
  description = "One or more 'source' blocks."
  type        = map(map(any))
  default     = null
}
#
# source block structure:
#   name (string)         : (REQUIRED) The name of the Fusion source signal. Refer to Fusion alert rule template for supported values.
#   enabled (bool)        : Whether this source signal is enabled or disabled in Fusion detection? Defaults to 'true'.
#   sub_type (block)      : One or more 'sub_type' blocks.
#
# sub_type block structure   :
#   name (string)              : (REQUIRED) The Name of the source subtype under a given source signal in Fusion detection. Refer to Fusion alert rule template for supported values.
#   enabled (bool)             : Whether this source subtype under source signal is enabled or disabled in Fusion detection. Defaults to 'true'.
#   severities_allowed (string): (REQUIRED) A list of severities that are enabled for this source subtype consumed in Fusion detection. Possible values for each element are 'High', 'Medium', 'Low', 'Informational'.


