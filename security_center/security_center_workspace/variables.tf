# REQUIRED VARIABLES

variable "scope" {
  description = "(REQUIRED) The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace to save the data in."
  type        = string

}
