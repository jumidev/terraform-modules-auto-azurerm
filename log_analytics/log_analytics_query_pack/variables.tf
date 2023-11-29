# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Log Analytics Query Pack. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Log Analytics Query Pack should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Log Analytics Query Pack."
  type        = map(any)
  default     = null
}
