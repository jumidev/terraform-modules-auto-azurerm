# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Insights component. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "application_type" {
  description = "(REQUIRED) Specifies the type of Application Insights to create. Valid values are 'ios' for _iOS_, 'java' for _Java web_, 'MobileCenter' for _App Center_, 'Node.JS' for _Node.js_, 'other' for _General_, 'phone' for _Windows Phone_, 'store' for _Windows Store_ and 'web' for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "daily_data_cap_in_gb" {
  description = "Specifies the Application Insights component daily data volume cap in GB."
  type        = number
  default     = null
}
variable "daily_data_cap_notifications_disabled" {
  description = "Specifies if a notification email will be send when the daily data volume cap is met."
  type        = bool
  default     = null
}
variable "retention_in_days" {
  description = "Specifies the retention period in days. Possible values are '30', '60', '90', '120', '180', '270', '365', '550' or '730'. Defaults to '90'."
  type        = number
  default     = 90
}
variable "sampling_percentage" {
  description = "Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to '100'."
  type        = string
  default     = "100"
}
variable "disable_ip_masking" {
  description = "By default the real client IP is masked as '0.0.0.0' in the logs. Use this argument to disable masking and log the real client IP. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "workspace_id" {
  description = "Specifies the id of a log analytics workspace resource."
  type        = string
  default     = null
}
variable "local_authentication_disabled" {
  description = "Disable Non-Azure AD based Auth. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "internet_ingestion_enabled" {
  description = "Should the Application Insights component support ingestion over the Public Internet? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "internet_query_enabled" {
  description = "Should the Application Insights component support querying over the Public Internet? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "force_customer_storage_for_profiler" {
  description = "Should the Application Insights component force users to create their own storage account for profiling? Defaults to 'false'."
  type        = bool
  default     = false
}
