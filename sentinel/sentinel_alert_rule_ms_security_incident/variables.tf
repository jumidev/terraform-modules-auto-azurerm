# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The friendly name of this Sentinel MS Security Incident Alert Rule."
  type        = string

}
variable "product_filter" {
  description = "(REQUIRED) The Microsoft Security Service from where the alert will be generated. Possible values are 'Azure Active Directory Identity Protection', 'Azure Advanced Threat Protection', 'Azure Security Center', 'Azure Security Center for IoT', 'Microsoft Cloud App Security', 'Microsoft Defender Advanced Threat Protection' and 'Office 365 Advanced Threat Protection'."
  type        = string

}
variable "severity_filter" {
  description = "(REQUIRED) Only create incidents from alerts when alert severity level is contained in this list. Possible values are 'High', 'Medium', 'Low' and 'Informational'."
  type        = string

}

# OPTIONAL VARIABLES

variable "alert_rule_template_guid" {
  description = "The GUID of the alert rule template which is used to create this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of this Sentinel MS Security Incident Alert Rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "display_name_filter" {
  description = "Only create incidents when the alert display name contain text from this list, leave empty to apply no filter."
  type        = string
  default     = null
}
variable "display_name_exclude_filter" {
  description = "Only create incidents when the alert display name doesn't contain text from this list."
  type        = string
  default     = null
}
