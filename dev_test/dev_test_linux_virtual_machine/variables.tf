# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created."
  type        = string

}
variable "gallery_image_reference" {
  description = "(REQUIRED) A 'gallery_image_reference' block."
  type        = map(any)
}
#
# gallery_image_reference block structure:
#   offer (string)                         : (REQUIRED) The Offer of the Gallery Image. Changing this forces a new resource to be created.
#   publisher (string)                     : (REQUIRED) The Publisher of the Gallery Image. Changing this forces a new resource to be created.
#   sku (string)                           : (REQUIRED) The SKU of the Gallery Image. Changing this forces a new resource to be created.
#   version (string)                       : (REQUIRED) The Version of the Gallery Image. Changing this forces a new resource to be created.


variable "lab_subnet_name" {
  description = "(REQUIRED) The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_virtual_network_id" {
  description = "(REQUIRED) The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "size" {
  description = "(REQUIRED) The Machine Size to use for this Virtual Machine, such as 'Standard_F2'. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_type" {
  description = "(REQUIRED) The type of Storage to use on this Virtual Machine. Possible values are 'Standard' and 'Premium'. Chaning this forces a new resource to be created."
  type        = string

}
variable "username" {
  description = "(REQUIRED) The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_claim" {
  description = "Can this Virtual Machine be claimed by users? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "disallow_public_ip_address" {
  description = "Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "inbound_nat_rule" {
  description = "One or more 'inbound_nat_rule' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# inbound_nat_rule block structure:
#   protocol (string)               : (REQUIRED) The Protocol used for this NAT Rule. Possible values are 'Tcp' and 'Udp'.
#   backend_port (string)           : (REQUIRED) The Backend Port associated with this NAT Rule. Changing this forces a new resource to be created.


variable "notes" {
  description = "Any notes about the Virtual Machine."
  type        = string
  default     = null
}
variable "password" {
  description = "The Password associated with the 'username' used to login to this Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "ssh_key" {
  description = "The SSH Key associated with the 'username' used to login to this Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
