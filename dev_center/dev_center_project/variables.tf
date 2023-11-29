# REQUIRED VARIABLES

variable "dev_center_id" {
  description = "(REQUIRED) Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Description of the project. Changing this forces a new Dev Center Project to be created."
  type        = string
  default     = null
}
variable "maximum_dev_boxes_per_user" {
  description = "When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project."
  type        = int
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Dev Center Project."
  type        = map(any)
  default     = null
}
