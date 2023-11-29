# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Azure Maps Creator. Changing this forces a new resource to be created."
  type        = string

}
variable "maps_account_id" {
  description = "(REQUIRED) The ID of the Azure Maps Creator. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_units" {
  description = "(REQUIRED) The storage units to be allocated. Integer values from 1 to 100, inclusive."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Maps Creator."
  type        = map(any)
  default     = null
}
