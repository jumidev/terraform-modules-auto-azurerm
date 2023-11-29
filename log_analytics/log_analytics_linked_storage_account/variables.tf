# REQUIRED VARIABLES

variable "data_source_type" {
  description = "(REQUIRED) The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are 'CustomLogs', 'AzureWatson', 'Query', 'Ingestion' and 'Alerts'. Changing this forces a new Log Analytics Linked Storage Account to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created."
  type        = string

}
variable "workspace_resource_id" {
  description = "(REQUIRED) The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created."
  type        = string

}
variable "storage_account_ids" {
  description = "(REQUIRED) The storage account resource ids to be linked."
  type        = string

}
