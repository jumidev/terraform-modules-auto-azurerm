# REQUIRED VARIABLES

variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that this Threat Intelligence TAXII Data Connector resides in. Changing this forces a new Threat Intelligence TAXII Data Connector to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Threat Intelligence TAXII Data Connector. Changing this forces a new Threat Intelligence TAXII Data Connector to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The friendly name which should be used for this Threat Intelligence TAXII Data Connector."
  type        = string

}
variable "api_root_url" {
  description = "(REQUIRED) The API root URI of the TAXII server."
  type        = string

}
variable "collection_id" {
  description = "(REQUIRED) The collection ID of the TAXII server."
  type        = string

}

# OPTIONAL VARIABLES

variable "user_name" {
  description = "The user name for the TAXII server."
  type        = string
  default     = null
}
variable "password" {
  description = "The password for the TAXII server."
  type        = string
  default     = null
}
variable "polling_frequency" {
  description = "The polling frequency for the TAXII server. Possible values are 'OnceAMinute', 'OnceAnHour' and 'OnceADay'. Defaults to 'OnceAnHour'."
  type        = string
  default     = "OnceAnHour"
}
variable "lookback_date" {
  description = "The lookback date for the TAXII server in RFC3339. Defaults to '1970-01-01T00:00:00Z'."
  type        = string
  default     = "1970-01-01T00:00:00Z"
}
variable "tenant_id" {
  description = "The ID of the tenant that this Threat Intelligence TAXII Data Connector connects to. Changing this forces a new Threat Intelligence TAXII Data Connector to be created."
  type        = string
  default     = null
}
