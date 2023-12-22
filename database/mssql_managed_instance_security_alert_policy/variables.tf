# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group that contains the MS SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "managed_instance_name" {
  description = "(REQUIRED) Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "disabled_alerts" {
  description = "Specifies an array of alerts that are disabled. Possible values are 'Sql_Injection', 'Sql_Injection_Vulnerability', 'Access_Anomaly', 'Data_Exfiltration', 'Unsafe_Action' and 'Brute_Force'."
  type        = bool
  default     = null
}
variable "enabled" {
  description = "Specifies the state of the Security Alert Policy, whether it is enabled or disabled. Possible values are 'true', 'false'."
  type        = bool
  default     = null
}
variable "email_account_admins_enabled" {
  description = "Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "email_addresses" {
  description = "Specifies an array of email addresses to which the alert is sent."
  type        = string
  default     = null
}
variable "retention_days" {
  description = "Specifies the number of days to keep in the Threat Detection audit logs. Defaults to '0'."
  type        = number
  default     = 0
}
variable "storage_endpoint" {
  description = "Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs."
  type        = string
  default     = null
}
variable "storage_account_access_key" {
  description = "Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use 'storage_endpoint' to specify a storage account blob endpoint."
  type        = string
  default     = null
}
