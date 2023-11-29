# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Email Communication Service resource. Changing this forces a new Email Communication Service to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Email Communication Service should exist. Changing this forces a new Email Communication Service to be created."
  type        = string

}
variable "data_location" {
  description = "(REQUIRED) The location where the Email Communication service stores its data at rest. Possible values are 'Africa', 'Asia Pacific', 'Australia', 'Brazil', 'Canada', 'Europe', 'France', 'Germany', 'India', 'Japan', 'Korea', 'Norway', 'Switzerland', 'UAE', 'UK' and 'United States'. Changing this forces a new Email Communication Service to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Email Communication Service."
  type        = map(any)
  default     = null
}
