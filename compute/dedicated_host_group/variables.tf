# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created."
  type        = string

}
variable "platform_fault_domain_count" {
  description = "(REQUIRED) The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created."
  type        = int

}

# OPTIONAL VARIABLES

variable "automatic_placement_enabled" {
  description = "Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "zone" {
  description = "Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
