# REQUIRED VARIABLES

variable "ip_group_id" {
  description = "(REQUIRED) The ID of the destination IP Group. Changing this forces a new IP Group CIDR to be created."
  type        = string

}
variable "cidr" {
  description = "(REQUIRED) The 'CIDR' that should be added to the IP Group. Changing this forces a new IP Group CIDR to be created."
  type        = string

}
