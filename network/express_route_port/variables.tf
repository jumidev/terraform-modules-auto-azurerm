# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created."
  type        = string

}
variable "bandwidth_in_gbps" {
  description = "(REQUIRED) Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created."
  type        = number

}
variable "encapsulation" {
  description = "(REQUIRED) The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: 'Dot1Q', 'QinQ'."
  type        = string

}
variable "peering_location" {
  description = "(REQUIRED) The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "link1" {
  description = "A list of 'link' blocks."
  type        = list(any)
  default     = []
}
variable "link2" {
  description = "A list of 'link' blocks."
  type        = list(any)
  default     = []
}
variable "billing_type" {
  description = "The billing type of the Express Route Port. Possible values are 'MeteredData' and 'UnlimitedData'."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is 'UserAssigned'.
#   identity_ids (list)     : (REQUIRED) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Express Route Port."
  type        = map(any)
  default     = null
}
