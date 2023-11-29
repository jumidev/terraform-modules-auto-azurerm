# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Disk Access."
  type        = map(any)
  default     = null
}
