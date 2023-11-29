# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "security_provider_name" {
  description = "(REQUIRED) The security provider name. Possible values are 'ZScaler', 'IBoss' and 'Checkpoint' is allowed. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "virtual_hub_id" {
  description = "The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Security Partner Provider."
  type        = map(any)
  default     = null
}
