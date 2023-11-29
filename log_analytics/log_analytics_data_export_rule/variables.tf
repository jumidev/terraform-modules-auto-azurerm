# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created."
  type        = string

}
variable "workspace_resource_id" {
  description = "(REQUIRED) The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created."
  type        = string

}
variable "destination_resource_id" {
  description = "(REQUIRED) The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically."
  type        = string

}
variable "table_names" {
  description = "(REQUIRED) A list of table names to export to the destination resource, for example: '['Heartbeat', 'SecurityEvent']'."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Is this Log Analytics Data Export Rule enabled? Possible values include 'true' or 'false'. Defaults to 'false'."
  type        = bool
  default     = false
}
