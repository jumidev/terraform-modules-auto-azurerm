# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of a table in a Log Analytics Workspace."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The object ID of the Log Analytics Workspace that contains the table."
  type        = string

}

# OPTIONAL VARIABLES

variable "plan" {
  description = "Specify the system how to handle and charge the logs ingested to the table. Possible values are 'Analytics' and 'Basic'. Defaults to 'Analytics'. -> **Note:** The 'name' of tables currently supported by the 'Basic' plan can be found [here](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/basic-logs-configure?tabs=portal-1#supported-tables)."
  type        = string
  default     = "Analytics"
}
variable "retention_in_days" {
  description = "The table's retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. -> **Note:** 'retention_in_days' will revert back to the value of azurerm_log_analytics_workspace retention_in_days when a azurerm_log_analytics_workspace_table is deleted. -> **Note:** The 'retention_in_days' cannot be specified when 'plan' is 'Basic' because the retention is fixed at eight days."
  type        = number
  default     = null
}
