# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Express Route VMware Authorization. Changing this forces a new VMware Authorization to be created."
  type        = string

}
variable "private_cloud_id" {
  description = "(REQUIRED) The ID of the VMware Private Cloud in which to create this Express Route VMware Authorization. Changing this forces a new VMware Authorization to be created."
  type        = string

}
