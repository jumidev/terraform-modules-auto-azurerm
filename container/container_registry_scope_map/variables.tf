# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the scope map. Changing this forces a new resource to be created."
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
variable "actions" {
  description = "(REQUIRED) A list of actions to attach to the scope map (e.g. 'repo/content/read', 'repo2/content/delete')."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the Container Registry."
  type        = string
  default     = null
}
variable "container_registry_resource_group_name" {
  description = "The Name of the Resource Group where this Container Registry exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
