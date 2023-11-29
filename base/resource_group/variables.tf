# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "managed_by" {
  description = "The ID of the resource or application that manages this Resource Group."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(any)
  default     = null
}
