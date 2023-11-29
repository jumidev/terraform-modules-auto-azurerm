# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Lab. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "storage_type" {
  description = "The type of storage used by the Dev Test Lab. Possible values are 'Standard' and 'Premium'. Defaults to 'Premium'."
  type        = string
  default     = "Premium"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
