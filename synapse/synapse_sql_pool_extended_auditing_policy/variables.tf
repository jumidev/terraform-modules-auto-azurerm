# REQUIRED VARIABLES

variable "sql_pool_id" {
  description = "(REQUIRED) The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "storage_endpoint" {
  description = "The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs."
  type        = string
  default     = null
}
variable "retention_in_days" {
  description = "The number of days to retain logs for in the storage account. Defaults to '0'."
  type        = number
  default     = "0"
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
  description = "Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to 'true'."
  type        = bool
  default     = true
}
