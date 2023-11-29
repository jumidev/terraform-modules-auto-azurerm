# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Mobile Network Site. Changing this forces a new Mobile Network Site to be created."
  type        = string

}
variable "mobile_network_id" {
  description = "(REQUIRED) the ID of the Mobile Network which the Mobile Network Site belongs to. Changing this forces a new Mobile Network Site to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Mobile Network Site should exist. Changing this forces a new Mobile Network Site to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Site."
  type        = map(any)
  default     = null
}
