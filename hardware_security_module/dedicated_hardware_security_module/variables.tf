# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created."
  type        = string

}
variable "network_profile" {
  description = "(REQUIRED) A 'network_profile' block."
  type        = map(any)
}
#
# network_profile block structure                :
#   network_interface_private_ip_addresses (string): (REQUIRED) The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
#   subnet_id (string)                             : (REQUIRED) The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.


variable "sku_name" {
  description = "(REQUIRED) The SKU name of the dedicated hardware security module. Possible values are 'payShield10K_LMK1_CPS60','payShield10K_LMK1_CPS250','payShield10K_LMK1_CPS2500','payShield10K_LMK2_CPS60','payShield10K_LMK2_CPS250','payShield10K_LMK2_CPS2500' and 'SafeNet Luna Network HSM A790'. Changing this forces a new Dedicated Hardware Security Module to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "management_network_profile" {
  description = "A 'management_network_profile' block."
  type        = map(any)
  default     = null
}
#
# management_network_profile block structure     :
#   network_interface_private_ip_addresses (string): (REQUIRED) The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
#   subnet_id (string)                             : (REQUIRED) The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.


variable "stamp_id" {
  description = "The ID of the stamp. Possible values are 'stamp1' or 'stamp2'. Changing this forces a new Dedicated Hardware Security Module to be created."
  type        = string
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Dedicated Hardware Security Module."
  type        = map(any)
  default     = null
}
