# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "bing_safety_phishing_url_lookback_date" {
  description = "The lookback date for the Bing Safety Phishing Url in RFC3339. Changing this forces a new Data Connector to be created."
  type        = datetime
  default     = null
}
variable "microsoft_emerging_threat_feed_lookback_date" {
  description = "The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created."
  type        = datetime
  default     = null
}
variable "tenant_id" {
  description = "The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created."
  type        = string
  default     = null
}
