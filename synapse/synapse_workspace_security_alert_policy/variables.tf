# REQUIRED VARIABLES

variable "synapse_workspace_id" {
  description = "(REQUIRED) Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "policy_state" {
  description = "(REQUIRED) Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are 'Disabled', 'Enabled' and 'New'."
  type        = string

}

# OPTIONAL VARIABLES

variable "disabled_alerts" {
  description = "Specifies an array of alerts that are disabled. Allowed values are: 'Sql_Injection', 'Sql_Injection_Vulnerability', 'Access_Anomaly', 'Data_Exfiltration', 'Unsafe_Action'."
  type        = string
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
  type        = string
  default     = "0"
}
variable "storage_account_access_key" {
  description = "Specifies the identifier key of the Threat Detection audit storage account."
  type        = string
  default     = null
}
variable "storage_endpoint" {
  description = "Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs."
  type        = string
  default     = null
}
