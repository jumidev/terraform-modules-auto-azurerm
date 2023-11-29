# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "public_network_access_enabled" {
  description = "Is public network access enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Monitor Workspace."
  type        = map(any)
  default     = null
}
