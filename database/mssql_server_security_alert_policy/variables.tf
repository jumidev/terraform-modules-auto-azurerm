# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MS SQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "state" {
  description = "(REQUIRED) Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database server. Possible values are 'Disabled', 'Enabled' and 'New'."
  type        = bool

}

# OPTIONAL VARIABLES

variable "disabled_alerts" {
  description = "Specifies an array of alerts that are disabled. Allowed values are: 'Sql_Injection', 'Sql_Injection_Vulnerability', 'Access_Anomaly', 'Data_Exfiltration', 'Unsafe_Action'."
  type        = bool
  default     = null
}
variable "email_account_admins" {
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
  description = "Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs."
  type        = string
  default     = null
}
variable "storage_account_access_key" {
  description = "Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use 'storage_endpoint' to specify a storage account blob endpoint. -> **NOTE:**  Please note that storage accounts configured with 'shared_access_key_enabled = false' cannot be used to configure 'azurerm_mssql_server_security_alert_policy' with 'storage_endpoint' for now."
  type        = string
  default     = null
}
