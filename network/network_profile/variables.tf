# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Network Profile. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "container_network_interface" {
  description = "(REQUIRED) A 'container_network_interface' block."
  type        = map(any)
}
#
# container_network_interface block structure:
#   name (string)                              : (REQUIRED) Specifies the name of the IP Configuration.
#   ip_configuration (string)                  : (REQUIRED) One or more 'ip_configuration' blocks.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
