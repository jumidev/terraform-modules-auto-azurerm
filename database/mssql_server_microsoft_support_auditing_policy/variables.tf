# REQUIRED VARIABLES

variable "server_id" {
  description = "(REQUIRED) The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Whether to enable the extended auditing policy. Possible values are 'true' and 'false'. Defaults to 'true'. ->**NOTE:**  If 'enabled' is 'true', 'blob_storage_endpoint' or 'log_monitoring_enabled' are required."
  type        = bool
  default     = true
}
variable "blob_storage_endpoint" {
  description = "The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs."
  type        = string
  default     = null
}
variable "storage_account_access_key" {
  description = "The access key to use for the auditing storage account."
  type        = string
  default     = null
}
variable "log_monitoring_enabled" {
  description = "Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "storage_account_subscription_id" {
  description = "The ID of the Subscription containing the Storage Account."
  type        = string
  default     = null
}
