# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "dashboard_properties" {
  description = "JSON data representing dashboard body. See above for details on how to obtain this from the Portal."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
