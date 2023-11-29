# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the User Assigned Identity."
  type        = map(any)
  default     = null
}
