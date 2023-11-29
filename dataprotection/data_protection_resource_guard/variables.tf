# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Resource Guard. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "vault_critical_operation_exclusion_list" {
  description = "A list of the critical operations which are not protected by this Resource Guard."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Guard."
  type        = map(any)
  default     = null
}
