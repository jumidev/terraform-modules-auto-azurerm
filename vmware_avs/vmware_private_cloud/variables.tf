# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this VMware Private Cloud. Changing this forces a new VMware Private Cloud to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created."
  type        = string

}
variable "management_cluster" {
  description = "(REQUIRED) A 'management_cluster' block. ~> **NOTE :** 'internet_connection_enabled' and 'management_cluster.0.size' cannot be updated at the same time."
  type        = map(any)
}
#
# management_cluster block structure:
#   size (string)                     : (REQUIRED) The size of the management cluster. This field can not updated with 'internet_connection_enabled' together.


variable "network_subnet_cidr" {
  description = "(REQUIRED) The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new VMware Private Cloud to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The Name of the SKU used for this Private Cloud. Possible values are 'av20', 'av36', 'av36t', 'av36p' and 'av52'. Changing this forces a new VMware Private Cloud to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "internet_connection_enabled" {
  description = "Is the Private Cluster connected to the internet? This field can not updated with 'management_cluster.0.size' together. ~> **NOTE :** 'internet_connection_enabled' and 'management_cluster.0.size' cannot be updated at the same time."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the VMware Private Cloud."
  type        = map(any)
  default     = null
}
