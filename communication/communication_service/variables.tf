# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Communication Service resource. Changing this forces a new Communication Service to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Communication Service should exist. Changing this forces a new Communication Service to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "data_location" {
  description = "The location where the Communication service stores its data at rest. Possible values are 'Africa', 'Asia Pacific', 'Australia', 'Brazil', 'Canada', 'Europe', 'France', 'Germany', 'India', 'Japan', 'Korea', 'Norway', 'Switzerland', 'UAE', 'UK' and 'United States'. Defaults to 'United States'. Changing this forces a new Communication Service to be created."
  type        = string
  default     = "United States"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Communication Service."
  type        = map(any)
  default     = null
}
