# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Virtual WAN. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "disable_vpn_encryption" {
  description = "Boolean flag to specify whether VPN encryption is disabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "allow_branch_to_branch_traffic" {
  description = "Boolean flag to specify whether branch to branch traffic is allowed. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "office365_local_breakout_category" {
  description = "Specifies the Office365 local breakout category. Possible values include: 'Optimize', 'OptimizeAndAllow', 'All', 'None'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "type" {
  description = "Specifies the Virtual WAN type. Possible Values include: 'Basic' and 'Standard'. Defaults to 'Standard'."
  type        = string
  default     = "Standard"
}
variable "tags" {
  description = "A mapping of tags to assign to the Virtual WAN."
  type        = map(any)
  default     = null
}
