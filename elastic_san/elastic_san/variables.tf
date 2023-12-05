# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Elastic SAN resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Elastic SAN resource should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Elastic SAN resource should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "base_size_in_tib" {
  description = "(REQUIRED) Specifies the base size of the Elastic SAN resource in TiB. Possible values are between '1' and '100'."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   name (string)      : (REQUIRED) The SKU name. Possible values are 'Premium_LRS' and 'Premium_ZRS'.
#   tier (string)      : The SKU tier. The only possible value is 'Premium'.



# OPTIONAL VARIABLES

variable "extended_size_in_tib" {
  description = "Specifies the extended size of the Elastic SAN resource in TiB. Possible values are between '1' and '100'."
  type        = string
  default     = null
}
variable "zones" {
  description = "Logical zone for the Elastic SAN resource. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Elastic SAN resource."
  type        = map(any)
  default     = null
}
