# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "distro" {
  description = "(REQUIRED) Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is 'AKSEdge'."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Arc Resource Bridge Appliance. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created.


variable "infrastructure_provider" {
  description = "(REQUIRED) The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are 'HCI','SCVMM' and 'VMWare'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "public_key_base64" {
  description = "The 'public_key_base64' is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Arc Resource Bridge Appliance."
  type        = map(any)
  default     = null
}
