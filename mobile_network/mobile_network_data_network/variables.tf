# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Mobile Network Data Network. Changing this forces a new Mobile Network Data Network to be created."
  type        = string

}
variable "mobile_network_id" {
  description = "(REQUIRED) Specifies the ID of the Mobile Network. Changing this forces a new Mobile Network Data Network to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Data Network should exist. Changing this forces a new Mobile Network Data Network to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of this Mobile Network Data Network."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Data Network."
  type        = map(any)
  default     = null
}
