# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Healthcare Workspace. Changing this forces a new Healthcare Workspace to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Healthcare Workspace should exist. Changing this forces a new Healthcare Workspace to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Healthcare Workspace should be created. Changing this forces a new Healthcare Workspace to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the Healthcare Workspace."
  type        = map(any)
  default     = null
}
