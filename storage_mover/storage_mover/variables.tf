# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for the Storage Mover."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Storage Mover."
  type        = map(any)
  default     = null
}
