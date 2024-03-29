# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "read_access_id" {
  description = "The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource."
  type        = string
  default     = null
}
variable "write_access_id" {
  description = "The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource. ~> **NOTE:** You must define at least one of the above access resource id attributes (e.g. 'read_access_id' or 'write_access_id')."
  type        = string
  default     = null
}
