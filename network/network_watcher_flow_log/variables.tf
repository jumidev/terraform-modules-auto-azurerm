# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Network Watcher Flow Log. Changing this forces a new resource to be created."
  type        = string

}
variable "network_watcher_name" {
  description = "(REQUIRED) The name of the Network Watcher. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created."
  type        = string

}
variable "network_security_group_id" {
  description = "(REQUIRED) The ID of the Network Security Group for which to enable flow logs for. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account where flow logs are stored."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Should Network Flow Logging be Enabled?"
  type        = bool

}
variable "retention_policy" {
  description = "(REQUIRED) A 'retention_policy' block."
  type        = map(any)
}
#
# retention_policy block structure:
#   enabled (bool)                  : (REQUIRED) Boolean flag to enable/disable retention.
#   days (number)                   : (REQUIRED) The number of days to retain flow log records.



# OPTIONAL VARIABLES

variable "location" {
  description = "The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the 'location' of the Network Watcher."
  type        = string
  default     = "location"
}
variable "traffic_analytics" {
  description = "A 'traffic_analytics' block."
  type        = map(any)
  default     = null
}
#
# traffic_analytics block structure:
#   enabled (bool)                   : (REQUIRED) Boolean flag to enable/disable traffic analytics.
#   workspace_id (string)            : (REQUIRED) The resource GUID of the attached workspace.
#   workspace_region (string)        : (REQUIRED) The location of the attached workspace.
#   workspace_resource_id (string)   : (REQUIRED) The resource ID of the attached workspace.
#   interval_in_minutes (number)     : How frequently service should do flow analytics in minutes. Defaults to '60'.


variable "version" {
  description = "The version (revision) of the flow log. Possible values are '1' and '2'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Network Watcher Flow Log."
  type        = map(any)
  default     = null
}
variable "network_watcher_resource_group_name" {
  description = "Specifies the Name of the Resource Group within which the Network Watcher exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
