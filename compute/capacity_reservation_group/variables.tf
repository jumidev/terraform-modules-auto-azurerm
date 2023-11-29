# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "zones" {
  description = "Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
