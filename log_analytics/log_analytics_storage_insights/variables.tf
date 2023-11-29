# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account used by this Log Analytics Storage Insights."
  type        = string

}
variable "storage_account_key" {
  description = "(REQUIRED) The storage access key to be used to connect to the storage account."
  type        = string

}

# OPTIONAL VARIABLES

variable "blob_container_names" {
  description = "The names of the blob containers that the workspace should read."
  type        = string
  default     = null
}
variable "table_names" {
  description = "The names of the Azure tables that the workspace should read."
  type        = string
  default     = null
}
