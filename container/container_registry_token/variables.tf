# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the token. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created."
  type        = string

}
variable "container_registry_name" {
  description = "(REQUIRED) The name of the Container Registry. Changing this forces a new resource to be created."
  type        = string

}
variable "scope_map_id" {
  description = "(REQUIRED) The ID of the Container Registry Scope Map associated with the token."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Should the Container Registry token be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "container_registry_resource_group_name" {
  description = "The Name of the Resource Group where this Container Registry exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
