# REQUIRED VARIABLES

variable "database_id" {
  description = "(REQUIRED) The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Whether to enable the extended auditing policy. Possible values are 'true' and 'false'. Defaults to 'true'. ->**NOTE:**  If 'enabled' is 'true', 'storage_endpoint' or 'log_monitoring_enabled' are required."
  type        = bool
  default     = true
}
variable "storage_endpoint" {
  description = "The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs."
  type        = string
  default     = null
}
variable "retention_in_days" {
  description = "The number of days to retain logs for in the storage account. Defaults to '0'."
  type        = number
  default     = 0
}
variable "storage_account_access_key" {
  description = "The access key to use for the auditing storage account."
  type        = string
  default     = null
}
variable "storage_account_access_key_is_secondary" {
  description = "Is 'storage_account_access_key' value the storage's secondary key?"
  type        = bool
  default     = null
}
variable "log_monitoring_enabled" {
  description = "Enable audit events to Azure Monitor? Defaults to 'true'. ~> **NOTE:** To enable sending audit events to Log Analytics, please refer to the example which can be found in [the './examples/sql-azure/sql_auditing_log_analytics' directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_server_auditing_log_analytics).  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics. To enable audit events to Eventhub, please refer to the example which can be found in [the './examples/sql-azure/sql_auditing_eventhub' directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_auditing_eventhub)."
  type        = bool
  default     = true
}
